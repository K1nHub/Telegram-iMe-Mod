.class final synthetic Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$showImageMenu$menuItems$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SocialWebScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;->showImageMenu(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;

    const/4 v1, 0x0

    const-string v4, "onMenuOpenInClicked"

    const-string v5, "onMenuOpenInClicked()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$showImageMenu$menuItems$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 115
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->onMenuOpenInClicked()V

    return-void
.end method
