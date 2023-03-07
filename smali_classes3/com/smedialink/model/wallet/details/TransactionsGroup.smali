.class public abstract Lcom/smedialink/model/wallet/details/TransactionsGroup;
.super Ljava/lang/Object;
.source "TransactionsGroup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/details/TransactionsGroup$All;,
        Lcom/smedialink/model/wallet/details/TransactionsGroup$Incoming;,
        Lcom/smedialink/model/wallet/details/TransactionsGroup$Outgoing;,
        Lcom/smedialink/model/wallet/details/TransactionsGroup$Swap;
    }
.end annotation


# instance fields
.field private final id:I

.field private final nameResId:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/smedialink/model/wallet/details/TransactionsGroup;->id:I

    .line 10
    iput p2, p0, Lcom/smedialink/model/wallet/details/TransactionsGroup;->nameResId:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/smedialink/model/wallet/details/TransactionsGroup;-><init>(II)V

    return-void
.end method


# virtual methods
.method public abstract checkTransaction(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Z
.end method

.method public final getId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/smedialink/model/wallet/details/TransactionsGroup;->id:I

    return v0
.end method

.method public final getNameResId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/model/wallet/details/TransactionsGroup;->nameResId:I

    return v0
.end method
