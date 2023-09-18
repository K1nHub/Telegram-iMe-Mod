.class final Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingConditionsBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;-><init>(Lcom/iMe/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$binding$2;->this$0:Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$binding$2;->this$0:Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->access$getFragment$p(Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object v0

    return-object v0
.end method
