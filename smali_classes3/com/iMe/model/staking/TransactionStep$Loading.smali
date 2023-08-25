.class public final Lcom/iMe/model/staking/TransactionStep$Loading;
.super Lcom/iMe/model/staking/TransactionStep;
.source "TransactionStep.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/staking/TransactionStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Loading"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/staking/TransactionStep$Loading;

    invoke-direct {v0}, Lcom/iMe/model/staking/TransactionStep$Loading;-><init>()V

    sput-object v0, Lcom/iMe/model/staking/TransactionStep$Loading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Loading;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 13
    sget v0, Lorg/telegram/messenger/R$string;->staking_action_button_loading:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/iMe/model/staking/TransactionStep;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
