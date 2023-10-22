.class public final Lcom/iMe/model/staking/TransactionStep$Idle;
.super Lcom/iMe/model/staking/TransactionStep;
.source "TransactionStep.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/staking/TransactionStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Idle"
.end annotation


# instance fields
.field private final textResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, v0, v1}, Lcom/iMe/model/staking/TransactionStep;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/iMe/model/staking/TransactionStep$Idle;->textResId:I

    return-void
.end method


# virtual methods
.method protected getTextResId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/iMe/model/staking/TransactionStep$Idle;->textResId:I

    return v0
.end method
