.class public final Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Cancel;
.super Lcom/smedialink/model/wallet/transaction/TransactionActionItem;
.source "TransactionActionItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/transaction/TransactionActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cancel"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Cancel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Cancel;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Cancel;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Cancel;->INSTANCE:Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Cancel;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 19
    sget v1, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_cancel:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_cancel_transaction:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/model/wallet/transaction/TransactionActionItem;-><init>(IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
