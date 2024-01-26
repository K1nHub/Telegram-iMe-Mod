.class Lorg/telegram/ui/ChatUsersActivity$DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "ChatUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatUsersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiffCallback"
.end annotation


# instance fields
.field newPositionToItem:Landroid/util/SparseIntArray;

.field oldBotEndRow:I

.field oldBotStartRow:I

.field private oldBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private oldContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field oldContactsEndRow:I

.field oldContactsStartRow:I

.field private oldParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field oldParticipantsEndRow:I

.field oldParticipantsStartRow:I

.field oldPositionToItem:Landroid/util/SparseIntArray;

.field oldRowCount:I

.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    .line 3589
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 3592
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    .line 3593
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    .line 3602
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipants:Ljava/util/ArrayList;

    .line 3603
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBots:Ljava/util/ArrayList;

    .line 3604
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContacts:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/ChatUsersActivity$1;)V
    .locals 0

    .line 3589
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    return-void
.end method

.method static synthetic access$9300(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;
    .locals 0

    .line 3589
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBots:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;
    .locals 0

    .line 3589
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;
    .locals 0

    .line 3589
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipants:Ljava/util/ArrayList;

    return-object p0
.end method

.method private put(IILandroid/util/SparseIntArray;)V
    .locals 0

    if-ltz p2, :cond_0

    .line 3680
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 3630
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->areItemsTheSame(II)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3631
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$5200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result p1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 2

    .line 3618
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBotStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBotEndRow:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 3619
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBots:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBotStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$9100(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$8300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3620
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContactsStartRow:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContactsEndRow:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 3621
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContacts:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContactsStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$9000(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$3300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3622
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipantsStartRow:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipantsEndRow:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 3623
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipants:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipantsStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1400(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$3100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3625
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fillPositions(Landroid/util/SparseIntArray;)V
    .locals 3

    .line 3640
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 3642
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4800(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3643
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3644
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3645
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3646
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3647
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v2, 0x6

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3648
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v2, 0x7

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3649
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0x8

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3650
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0x9

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3651
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0xa

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3652
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3800(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0xb

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3653
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0xc

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3654
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0xd

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3655
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0xe

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3656
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0xf

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3657
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0x10

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3658
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0x11

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3659
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0x12

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3660
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0x13

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3661
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/16 v2, 0x14

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 3662
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$9600(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x15

    .line 3663
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    :cond_0
    add-int/2addr v2, v1

    .line 3665
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/2addr v2, v1

    .line 3666
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/2addr v2, v1

    .line 3667
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/2addr v2, v1

    .line 3668
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6800(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/2addr v2, v1

    .line 3669
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/2addr v2, v1

    .line 3670
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/2addr v2, v1

    .line 3671
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/2addr v2, v1

    .line 3672
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/2addr v2, v1

    .line 3673
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/2addr v2, v1

    .line 3674
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8800(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    add-int/2addr v2, v1

    .line 3675
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$7000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-direct {p0, v2, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    return-void
.end method

.method public getNewListSize()I
    .locals 1

    .line 3613
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$2900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 3608
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldRowCount:I

    return v0
.end method
