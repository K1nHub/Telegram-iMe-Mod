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

    .line 11757
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 11761
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    .line 11762
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    .line 11763
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldChatParticipant:Ljava/util/ArrayList;

    .line 11764
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldChatParticipantSorted:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ProfileActivity$1;)V
    .locals 0

    .line 11757
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;-><init>(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method private put(IILandroid/util/SparseIntArray;)V
    .locals 0

    if-ltz p2, :cond_0

    .line 11893
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0

    .line 11805
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->areItemsTheSame(II)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 5

    .line 11780
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 11781
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldMembersStartRow:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldMembersEndRow:I

    if-ge p1, v0, :cond_3

    .line 11784
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldChatParticipantSorted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11785
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

    .line 11787
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldChatParticipant:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldMembersStartRow:I

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 11790
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11791
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15100(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$30900(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$14800(Lorg/telegram/ui/ProfileActivity;)I

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

    .line 11793
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15100(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$14800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    sub-int/2addr p2, v3

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 11795
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

    .line 11798
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 11799
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

    .line 11809
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 11812
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11813
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11814
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11815
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11816
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11817
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11818
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11819
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11821
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11822
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11823
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11824
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11825
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11826
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11827
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$23800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11828
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11829
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$23900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11830
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11831
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x13

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11832
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x14

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11833
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x15

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11834
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x16

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11835
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x17

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11836
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11837
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x19

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11838
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x1a

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11839
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x1b

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11840
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x1c

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11841
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x1d

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11842
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11843
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x1f

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11844
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11845
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x21

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11846
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x22

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11847
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x23

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11848
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x24

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11849
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x25

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11850
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x26

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11851
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x27

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11852
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x28

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11853
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x29

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11854
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$29600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x2a

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11855
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$14700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x2b

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11856
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x2c

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11857
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$23500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x2d

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11858
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x2e

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11859
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x2f

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11860
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x30

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11861
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x31

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11862
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x32

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11863
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x33

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11864
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$24000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x34

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11865
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x35

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11866
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x36

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11867
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x37

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11868
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x38

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11869
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$28100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x39

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11870
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11871
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x3b

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11872
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x3c

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11873
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x3d

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11874
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x3e

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11875
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$25200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x3f

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11876
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$23400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x40

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11877
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x41

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11878
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x42

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11879
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x43

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11880
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x44

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11881
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x45

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11882
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x46

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11883
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$26900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x47

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11884
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x48

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11885
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$32200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x49

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11886
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$27100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x4a

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11887
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$30700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x4b

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 11888
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ProfileActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    return-void
.end method

.method public getNewListSize()I
    .locals 1

    .line 11775
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$31000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 11770
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$DiffCallback;->oldRowCount:I

    return v0
.end method
