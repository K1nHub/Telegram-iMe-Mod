.class final Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider$networkIconCornerSize$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingCalculatorProgrammeProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;-><init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider$networkIconCornerSize$2;->this$0:Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider$networkIconCornerSize$2;->this$0:Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;

    invoke-static {v0}, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;->access$getResourceManager$p(Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$dimen;->icon_size_default:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getDimens(I)F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/smedialink/ui/adapter/provider/StakingCalculatorProgrammeProvider$networkIconCornerSize$2;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
