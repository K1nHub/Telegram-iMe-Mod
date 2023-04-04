.class public final Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;
.super Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;
.source "TutorialType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Backup"
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
    .locals 1
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

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;->onTutorialPassedFragmentCreator:Lkotlin/jvm/functions/Function0;

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

    .line 10
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;->onTutorialPassedFragmentCreator:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method
