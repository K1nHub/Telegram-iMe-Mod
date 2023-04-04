.class public final Lcom/iMe/model/wallet/transaction/TransactionActionItem$Support;
.super Lcom/iMe/model/wallet/transaction/TransactionActionItem;
.source "TransactionActionItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/transaction/TransactionActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Support"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/transaction/TransactionActionItem$Support;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/transaction/TransactionActionItem$Support;

    invoke-direct {v0}, Lcom/iMe/model/wallet/transaction/TransactionActionItem$Support;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/transaction/TransactionActionItem$Support;->INSTANCE:Lcom/iMe/model/wallet/transaction/TransactionActionItem$Support;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 15
    sget v1, Lorg/telegram/messenger/R$string;->wallet_token_details_action_simplex_support:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_help:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/wallet/transaction/TransactionActionItem;-><init>(IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
