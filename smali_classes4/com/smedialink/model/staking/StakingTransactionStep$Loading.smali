.class public final Lcom/smedialink/model/staking/StakingTransactionStep$Loading;
.super Lcom/smedialink/model/staking/StakingTransactionStep;
.source "StakingTransactionStep.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/staking/StakingTransactionStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Loading"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$Loading;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/staking/StakingTransactionStep$Loading;

    invoke-direct {v0}, Lcom/smedialink/model/staking/StakingTransactionStep$Loading;-><init>()V

    sput-object v0, Lcom/smedialink/model/staking/StakingTransactionStep$Loading;->INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$Loading;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 13
    sget v0, Lorg/telegram/messenger/R$string;->staking_action_button_loading:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smedialink/model/staking/StakingTransactionStep;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
