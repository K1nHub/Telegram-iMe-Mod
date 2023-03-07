.class public final Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Copy;
.super Lcom/smedialink/model/wallet/transaction/TransactionActionItem;
.source "TransactionActionItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/transaction/TransactionActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Copy"
.end annotation


# instance fields
.field private final title:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .line 17
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_id_28:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/model/wallet/transaction/TransactionActionItem;-><init>(IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Copy;->title:I

    return-void
.end method


# virtual methods
.method public getTitle()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionActionItem$Copy;->title:I

    return v0
.end method
