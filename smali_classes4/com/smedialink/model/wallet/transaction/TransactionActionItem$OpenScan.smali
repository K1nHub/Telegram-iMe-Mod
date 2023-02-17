.class public final Lcom/smedialink/model/wallet/transaction/TransactionActionItem$OpenScan;
.super Lcom/smedialink/model/wallet/transaction/TransactionActionItem;
.source "TransactionActionItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/transaction/TransactionActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenScan"
.end annotation


# instance fields
.field private final icon:I

.field private final titleString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const-string v0, "titleString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/smedialink/model/wallet/transaction/TransactionActionItem;-><init>(IILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$OpenScan;->icon:I

    iput-object p2, p0, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$OpenScan;->titleString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$OpenScan;->icon:I

    return v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$OpenScan;->titleString:Ljava/lang/String;

    return-object v0
.end method
