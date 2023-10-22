.class public final Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;
.super Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;
.source "TutorialType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WalletIntro"
.end annotation


# instance fields
.field private final onTutorialPassedFragmentCreator:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onTutorialPassedFragmentCreator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget v0, Lorg/telegram/messenger/R$string;->wallet_creation_backup:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;->onTutorialPassedFragmentCreator:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getOnTutorialPassedFragmentCreator()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;->onTutorialPassedFragmentCreator:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method
