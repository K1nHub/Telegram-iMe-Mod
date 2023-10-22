.class Lorg/telegram/ui/ProfileActivity$DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiffCallback"
.end annotation


# instance fields
.field newPositionToItem:Landroid/util/SparseIntArray;

.field oldChatParticipant:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field

.field oldChatParticipantSorted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field oldMembersEndRow:I

.field oldMembersStartRow:I

.field oldPositionToItem:Landroid/util/SparseIntArray;

.field oldRowCount:I

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 12431
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 12435
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    .line 12436
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    .line 12437
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldChatParticipant:Ljava/util/ArrayList;

    .line 12438
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldChatParticipantSorted:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ProfileActivity$1;)V
    .locals 0

    .line 12431
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method private put(IILandroid/util/SparseIntArray;)V
    .locals 0

    if-ltz p2, :cond_0

    .line 12567
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0

    .line 12479
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->areItemsTheSame(II)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 5

    .line 12454
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 12455
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldMembersStartRow:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldMembersEndRow:I

    if-ge p1, v0, :cond_3

    .line 12458
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldChatParticipantSorted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12459
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldChatParticipant:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldChatParticipantSorted:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldMembersStartRow:I

    sub-int/2addr p1, v4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    goto :goto_0

    .line 12461
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldChatParticipant:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldMembersStartRow:I

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 12464
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15600(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12465
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15700(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$31700(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$15400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    sub-int/2addr p2, v4

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    goto :goto_1

    .line 12467
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15700(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$15400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    sub-int/2addr p2, v3

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 12469
    :goto_1
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    iget-wide p1, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    cmp-long p1, v3, p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    .line 12472
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 12473
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-ne p1, p2, :cond_4

    if-ltz p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1
.end method

.method public fillPositions(Landroid/util/SparseIntArray;)V
    .locals 2

    .line 12483
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 12486
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12487
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12488
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12489
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12490
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12491
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12492
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12493
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12495
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12496
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12497
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12498
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12499
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12500
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12501
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12502
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12503
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12504
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12505
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x13

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12506
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x14

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12507
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x15

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12508
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x16

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12509
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x17

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12510
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12511
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x19

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12512
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x1a

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12513
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x1b

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12514
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x1c

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12515
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x1d

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12516
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12517
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x1f

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12518
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12519
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x21

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12520
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x22

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12521
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x23

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12522
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x24

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12523
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x25

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12524
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x26

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12525
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x27

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12526
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x28

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12527
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x29

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12528
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x2a

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12529
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x2b

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12530
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$33000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x2c

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12531
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x2d

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12532
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x2e

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12533
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x2f

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12534
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x30

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12535
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x31

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12536
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x32

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12537
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x33

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12538
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x34

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12539
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x35

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12540
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x36

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12541
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x37

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12542
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x38

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12543
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x39

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12544
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12545
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x3b

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12546
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x3c

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12547
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x3d

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12548
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x3e

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12549
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x3f

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12550
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x40

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12551
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x41

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12552
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x42

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12553
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x43

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12554
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x44

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12555
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x45

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12556
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x46

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12557
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x47

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12558
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x48

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12559
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$33100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x49

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12560
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x4a

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12561
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x4b

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 12562
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    return-void
.end method

.method public getNewListSize()I
    .locals 1

    .line 12449
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 12444
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldRowCount:I

    return v0
.end method
