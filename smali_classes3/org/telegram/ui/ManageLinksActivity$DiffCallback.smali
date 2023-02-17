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
            "Lcom/smedialink/model/wallet/transaction/TransactionItem;",
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

    .line 3053
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 3060
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationsTransactions:Ljava/util/ArrayList;

    .line 3072
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    .line 3073
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    .line 3074
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinks:Ljava/util/ArrayList;

    .line 3075
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinks:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/ManageLinksActivity$1;)V
    .locals 0

    .line 3053
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    return-void
.end method

.method private put(IILandroid/util/SparseIntArray;)V
    .locals 0

    if-ltz p2, :cond_0

    .line 3173
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0

    .line 3126
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->areItemsTheSame(II)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 4

    .line 3091
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationTransactionsStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationTransactionsEndRow:I

    if-ge p1, v0, :cond_0

    .line 3092
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 3093
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3700(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$1600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/model/wallet/transaction/TransactionItem;

    .line 3094
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationsTransactions:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationTransactionsStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/model/wallet/transaction/TransactionItem;

    .line 3095
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3099
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

    .line 3100
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p2, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 3103
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 3104
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5800(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$2000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    goto :goto_0

    .line 3106
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5900(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$2200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 3108
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinksStartRow:I

    if-lt p1, v0, :cond_6

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinksEndRow:I

    if-ge p1, v1, :cond_6

    .line 3109
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinks:Ljava/util/ArrayList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    goto :goto_1

    .line 3111
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinks:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinksStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 3113
    :goto_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3116
    :cond_7
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldAdminsStartRow:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldAdminsEndRow:I

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-lt p2, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    if-ge p2, v0, :cond_9

    .line 3117
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldAdminsStartRow:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 3119
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 3120
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-ltz p1, :cond_a

    if-ne p1, p2, :cond_a

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public fillPositions(Landroid/util/SparseIntArray;)V
    .locals 2

    .line 3130
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 3134
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3135
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3136
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3137
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3138
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3139
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3140
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3141
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$4100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3142
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3143
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$8000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3144
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$3600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3145
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3146
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3147
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3148
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3149
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3150
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3151
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3152
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x13

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3153
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x14

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3154
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$6200(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x15

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3156
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7000(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x16

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3157
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x17

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3158
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3159
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x19

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3160
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1900(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x1a

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3161
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5500(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x1b

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3162
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$2400(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x1c

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3163
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$8100(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x1d

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3164
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3165
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x1f

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3166
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5700(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3167
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$5600(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x21

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3168
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$7800(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    const/16 v1, 0x22

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    return-void
.end method

.method public getNewListSize()I
    .locals 1

    .line 3085
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$1300(Lorg/telegram/ui/ManageLinksActivity;)I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 3080
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRowCount:I

    return v0
.end method
