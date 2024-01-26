.class Lorg/telegram/ui/ManageLinksActivity$DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "ManageLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ManageLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiffCallback"
.end annotation


# instance fields
.field newPositionToItem:Landroid/util/SparseIntArray;

.field oldAdminsEndRow:I

.field oldAdminsStartRow:I

.field oldDonationTransactionsEndRow:I

.field oldDonationTransactionsStartRow:I

.field oldDonationsTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/iMe/model/wallet/transaction/TransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field oldLinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;",
            ">;"
        }
    .end annotation
.end field

.field oldLinksEndRow:I

.field oldLinksStartRow:I

.field oldPositionToItem:Landroid/util/SparseIntArray;

.field oldRevokedLinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;",
            ">;"
        }
    .end annotation
.end field

.field oldRevokedLinksEndRow:I

.field oldRevokedLinksStartRow:I

.field oldRowCount:I

.field final synthetic this$0:Lorg/telegram/ui/ManageLinksActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 2499
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 2506
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationsTransactions:Ljava/util/ArrayList;

    .line 2518
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    .line 2519
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    .line 2520
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinks:Ljava/util/ArrayList;

    .line 2521
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinks:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/ManageLinksActivity$1;)V
    .locals 0

    .line 2499
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    return-void
.end method

.method private put(IILandroid/util/SparseIntArray;)V
    .locals 0

    if-ltz p2, :cond_0

    .line 2618
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0

    .line 2570
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->areItemsTheSame(II)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 4

    .line 2537
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationTransactionsStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationTransactionsEndRow:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 2538
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3000(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$1000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/model/wallet/transaction/TransactionItem;

    .line 2539
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationsTransactions:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationTransactionsStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    .line 2540
    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2543
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinksStartRow:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinksEndRow:I

    if-lt p1, v0, :cond_2

    :cond_1
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinksStartRow:I

    if-lt p1, v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinksEndRow:I

    if-ge p1, v0, :cond_7

    .line 2544
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p2, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 2547
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 2548
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4900(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$1400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    goto :goto_0

    .line 2550
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5000(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$1600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 2552
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinksStartRow:I

    if-lt p1, v0, :cond_6

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinksEndRow:I

    if-ge p1, v1, :cond_6

    .line 2553
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinks:Ljava/util/ArrayList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    goto :goto_1

    .line 2555
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinks:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinksStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 2557
    :goto_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2560
    :cond_7
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldAdminsStartRow:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldAdminsEndRow:I

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p2, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p2, v0, :cond_9

    .line 2561
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldAdminsStartRow:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    return v1

    .line 2563
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 2564
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-ltz p1, :cond_a

    if-ne p1, p2, :cond_a

    goto :goto_3

    :cond_a
    move v1, v2

    :goto_3
    return v1
.end method

.method public fillPositions(Landroid/util/SparseIntArray;)V
    .locals 2

    .line 2574
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 2578
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2579
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2580
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2581
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2582
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2583
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2584
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2585
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2586
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2587
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2588
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2589
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2590
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2591
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2592
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2593
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2594
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2595
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2596
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x13

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2597
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x14

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2598
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x15

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2599
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x16

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2601
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x17

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2602
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2603
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x19

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2604
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x1a

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2605
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x1b

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2606
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x1c

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2607
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x1d

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2608
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2609
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x1f

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2610
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2611
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x21

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2612
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x22

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 2613
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x23

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    return-void
.end method

.method public getNewListSize()I
    .locals 1

    .line 2531
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 2526
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRowCount:I

    return v0
.end method
