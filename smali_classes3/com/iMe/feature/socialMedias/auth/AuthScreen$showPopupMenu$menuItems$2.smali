.class final synthetic Lcom/iMe/feature/socialMedias/auth/AuthScreen$showPopupMenu$menuItems$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AuthScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/auth/AuthScreen;->showPopupMenu()V
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

    const-class v3, Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    const/4 v1, 0x0

    const-string v4, "onMenuResetClicked"

    const-string v5, "onMenuResetClicked()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/auth/AuthScreen$showPopupMenu$menuItems$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 101
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel;->onMenuResetClicked()V

    return-void
.end method
