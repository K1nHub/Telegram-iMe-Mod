.class final Lcom/iMe/feature/profile/ProfileSocialCell$updateState$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProfileSocialCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/profile/ProfileSocialCell;->updateState(Lcom/iMe/feature/profile/ProfileUiState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
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


# instance fields
.field final synthetic $network:Lcom/iMe/feature/socialMedias/SocialNetwork;

.field final synthetic $onNetworkClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$1$1$1$1;->$onNetworkClick:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$1$1$1$1;->$network:Lcom/iMe/feature/socialMedias/SocialNetwork;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$1$1$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$1$1$1$1;->$onNetworkClick:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$1$1$1$1;->$network:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
