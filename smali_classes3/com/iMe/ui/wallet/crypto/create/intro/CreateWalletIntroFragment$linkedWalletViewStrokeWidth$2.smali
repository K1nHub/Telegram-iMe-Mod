.class final Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$linkedWalletViewStrokeWidth$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletIntroFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$linkedWalletViewStrokeWidth$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$linkedWalletViewStrokeWidth$2;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$linkedWalletViewStrokeWidth$2;-><init>()V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$linkedWalletViewStrokeWidth$2;->INSTANCE:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$linkedWalletViewStrokeWidth$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x1

    .line 77
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$linkedWalletViewStrokeWidth$2;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
