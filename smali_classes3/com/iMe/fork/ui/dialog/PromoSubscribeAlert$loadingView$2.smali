.class final Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$loadingView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PromoSubscribeAlert.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;-><init>(Lorg/telegram/ui/LaunchActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$loadingView$2;->this$0:Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/LinearLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$loadingView$2;->this$0:Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;->access$initLoadingView(Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/PromoSubscribeAlert$loadingView$2;->invoke()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
