.class final Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SocialWebScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/activity/OnBackPressedCallback;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;


# direct methods
.method constructor <init>(Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$onViewCreated$1;->this$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$onViewCreated$1;->invoke(Landroidx/activity/OnBackPressedCallback;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/activity/OnBackPressedCallback;)V
    .locals 1

    const-string v0, "$this$addCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$onViewCreated$1;->this$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;

    invoke-static {p1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;->access$showCloseDialog(Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen;)V

    return-void
.end method
