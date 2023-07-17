.class final Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt$mapToUi$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingTransactionActionToFeeUiMapping.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt;->mapToUi(Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;Lcom/iMe/model/dialog/DialogModel;)Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt$mapToUi$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt$mapToUi$1;

    invoke-direct {v0}, Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt$mapToUi$1;-><init>()V

    sput-object v0, Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt$mapToUi$1;->INSTANCE:Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt$mapToUi$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-virtual {p0, p1}, Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt$mapToUi$1;->invoke(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
