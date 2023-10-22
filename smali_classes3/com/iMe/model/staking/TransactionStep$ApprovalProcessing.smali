.class public final Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;
.super Lcom/iMe/model/staking/TransactionStep;
.source "TransactionStep.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/staking/TransactionStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApprovalProcessing"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;

    invoke-direct {v0}, Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;-><init>()V

    sput-object v0, Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 21
    sget v0, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_approving:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 20
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/model/staking/TransactionStep;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
