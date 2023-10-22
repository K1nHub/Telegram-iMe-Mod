.class public final Lcom/iMe/model/wallet/details/TransactionsGroup$All;
.super Lcom/iMe/model/wallet/details/TransactionsGroup;
.source "TransactionsGroup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/details/TransactionsGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "All"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/details/TransactionsGroup$All;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/details/TransactionsGroup$All;

    invoke-direct {v0}, Lcom/iMe/model/wallet/details/TransactionsGroup$All;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/details/TransactionsGroup$All;->INSTANCE:Lcom/iMe/model/wallet/details/TransactionsGroup$All;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 16
    sget v0, Lorg/telegram/messenger/R$id;->wallet_token_details_transactions_all:I

    .line 17
    sget v1, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_all:I

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/model/wallet/details/TransactionsGroup;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public checkTransaction(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Z
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
