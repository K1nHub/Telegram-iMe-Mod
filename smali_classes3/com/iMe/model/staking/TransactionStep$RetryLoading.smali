.class public final Lcom/iMe/model/staking/TransactionStep$RetryLoading;
.super Lcom/iMe/model/staking/TransactionStep;
.source "TransactionStep.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/staking/TransactionStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetryLoading"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/staking/TransactionStep$RetryLoading;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/staking/TransactionStep$RetryLoading;

    invoke-direct {v0}, Lcom/iMe/model/staking/TransactionStep$RetryLoading;-><init>()V

    sput-object v0, Lcom/iMe/model/staking/TransactionStep$RetryLoading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$RetryLoading;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 18
    sget v0, Lorg/telegram/messenger/R$string;->staking_action_button_try_again:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/model/staking/TransactionStep;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
