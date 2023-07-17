.class public final Lcom/iMe/model/wallet/transaction/TransactionActionItem$OpenScan;
.super Lcom/iMe/model/wallet/transaction/TransactionActionItem;
.source "TransactionActionItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/transaction/TransactionActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenScan"
.end annotation


# instance fields
.field private final iconUrl:Ljava/lang/String;

.field private final titleString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "titleString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, v0, v0, p1, v1}, Lcom/iMe/model/wallet/transaction/TransactionActionItem;-><init>(IILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/wallet/transaction/TransactionActionItem$OpenScan;->titleString:Ljava/lang/String;

    iput-object p2, p0, Lcom/iMe/model/wallet/transaction/TransactionActionItem$OpenScan;->iconUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionActionItem$OpenScan;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionActionItem$OpenScan;->titleString:Ljava/lang/String;

    return-object v0
.end method
