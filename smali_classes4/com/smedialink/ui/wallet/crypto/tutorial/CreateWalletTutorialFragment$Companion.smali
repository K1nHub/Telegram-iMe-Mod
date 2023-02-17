.class public final Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;
.super Ljava/lang/Object;
.source "CreateWalletTutorialFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;ILjava/lang/Object;)Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 202
    sget-object p1, Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType$Intro;->INSTANCE:Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType$Intro;

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;->newInstance(Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;)Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;)Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;
    .locals 1

    const-string v0, "tutorialType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    invoke-direct {v0, p1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;-><init>(Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;)V

    return-object v0
.end method
