.class Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "PeopleNearbyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeopleNearbyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiffCallback"
.end annotation


# instance fields
.field newPositionToItem:Landroid/util/SparseIntArray;

.field private final oldChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_peerLocated;",
            ">;"
        }
    .end annotation
.end field

.field oldChatsEndRow:I

.field oldChatsStartRow:I

.field oldPositionToItem:Landroid/util/SparseIntArray;

.field oldRowCount:I

.field private final oldUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_peerLocated;",
            ">;"
        }
    .end annotation
.end field

.field oldUsersEndRow:I

.field oldUsersStartRow:I

.field final synthetic this$0:Lorg/telegram/ui/PeopleNearbyActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/PeopleNearbyActivity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 200
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    .line 201
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    .line 209
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldUsers:Ljava/util/ArrayList;

    .line 210
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldChats:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/PeopleNearbyActivity;Lorg/telegram/ui/PeopleNearbyActivity$1;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;-><init>(Lorg/telegram/ui/PeopleNearbyActivity;)V

    return-void
.end method

.method private put(IILandroid/util/SparseIntArray;)V
    .locals 0

    if-ltz p2, :cond_0

    .line 276
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0

    .line 245
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->areItemsTheSame(II)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 5

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$300(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$400(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ge p2, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldUsersStartRow:I

    if-lt p1, v0, :cond_1

    iget v3, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldUsersEndRow:I

    if-ge p1, v3, :cond_1

    sub-int v0, p1, v0

    .line 227
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v3}, Lorg/telegram/ui/PeopleNearbyActivity;->access$300(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v3

    sub-int v3, p2, v3

    if-ltz v0, :cond_0

    .line 229
    iget-object v4, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    if-ltz v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$500(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldUsers:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldUsersStartRow:I

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeopleNearbyActivity;->access$500(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$300(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 231
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$600(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-lt p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$700(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    if-ge p2, v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldChatsStartRow:I

    if-lt p1, v0, :cond_3

    iget v3, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldChatsEndRow:I

    if-ge p1, v3, :cond_3

    sub-int v0, p1, v0

    .line 234
    iget-object v3, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v3}, Lorg/telegram/ui/PeopleNearbyActivity;->access$600(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v3

    sub-int v3, p2, v3

    if-ltz v0, :cond_2

    .line 236
    iget-object v4, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldChats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    if-ltz v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$800(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldChats:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldChatsStartRow:I

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    iget-object p1, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeopleNearbyActivity;->access$800(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$600(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_peerLocated;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 238
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-ne p1, p2, :cond_4

    if-ltz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public fillPositions(Landroid/util/SparseIntArray;)V
    .locals 2

    .line 249
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$900(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1000(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1100(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1200(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1300(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1400(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1500(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1600(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$1700(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0, p1}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->put(IILandroid/util/SparseIntArray;)V

    return-void
.end method

.method public getNewListSize()I
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$200(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 214
    iget v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldRowCount:I

    return v0
.end method

.method public saveCurrentState()V
    .locals 2

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$200(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldRowCount:I

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$300(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldUsersStartRow:I

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$400(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldUsersEndRow:I

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$600(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldChatsStartRow:I

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeopleNearbyActivity;->access$700(Lorg/telegram/ui/PeopleNearbyActivity;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldChatsEndRow:I

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldUsers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeopleNearbyActivity;->access$500(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldChats:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->this$0:Lorg/telegram/ui/PeopleNearbyActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeopleNearbyActivity;->access$800(Lorg/telegram/ui/PeopleNearbyActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/PeopleNearbyActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    return-void
.end method
