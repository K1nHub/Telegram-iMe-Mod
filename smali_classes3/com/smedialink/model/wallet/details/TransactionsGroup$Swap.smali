.class public final Lcom/smedialink/model/wallet/details/TransactionsGroup$Swap;
.super Lcom/smedialink/model/wallet/details/TransactionsGroup;
.source "TransactionsGroup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/details/TransactionsGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Swap"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/wallet/details/TransactionsGroup$Swap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/details/TransactionsGroup$Swap;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/details/TransactionsGroup$Swap;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/details/TransactionsGroup$Swap;->INSTANCE:Lcom/smedialink/model/wallet/details/TransactionsGroup$Swap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 50
    sget v0, Lorg/telegram/messenger/R$id;->wallet_token_details_transactions_swap:I

    .line 51
    sget v1, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_swap:I

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, v0, v1, v2}, Lcom/smedialink/model/wallet/details/TransactionsGroup;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public checkTransaction(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Z
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    return p1
.end method
