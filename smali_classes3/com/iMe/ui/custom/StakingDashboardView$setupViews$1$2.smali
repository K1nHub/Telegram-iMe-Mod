.class final Lcom/iMe/ui/custom/StakingDashboardView$setupViews$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingDashboardView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/custom/StakingDashboardView;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/custom/StakingDashboardView;


# direct methods
.method constructor <init>(Lcom/iMe/ui/custom/StakingDashboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingDashboardView$setupViews$1$2;->this$0:Lcom/iMe/ui/custom/StakingDashboardView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/iMe/ui/custom/StakingDashboardView$setupViews$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingDashboardView$setupViews$1$2;->this$0:Lcom/iMe/ui/custom/StakingDashboardView;

    invoke-static {v0}, Lcom/iMe/ui/custom/StakingDashboardView;->access$getOnHistoryClick$p(Lcom/iMe/ui/custom/StakingDashboardView;)Lcom/iMe/fork/utils/Callbacks$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method