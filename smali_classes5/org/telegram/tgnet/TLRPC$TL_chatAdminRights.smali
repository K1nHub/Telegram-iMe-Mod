.class public Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x5fb224d5


# instance fields
.field public add_admins:Z

.field public anonymous:Z

.field public ban_users:Z

.field public change_info:Z

.field public delete_messages:Z

.field public delete_stories:Z

.field public edit_messages:Z

.field public edit_stories:Z

.field public flags:I

.field public invite_users:Z

.field public manage_call:Z

.field public manage_topics:Z

.field public other:Z

.field public pin_messages:Z

.field public post_messages:Z

.field public post_stories:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4841
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 1

    .line 4862
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4864
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_chatAdminRights"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4869
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 4870
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 4875
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 4876
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 4877
    :goto_1
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    .line 4878
    :goto_2
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_3

    :cond_3
    move p2, v0

    .line 4879
    :goto_3
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_4

    move p2, v1

    goto :goto_4

    :cond_4
    move p2, v0

    .line 4880
    :goto_4
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    and-int/lit8 p2, p1, 0x20

    if-eqz p2, :cond_5

    move p2, v1

    goto :goto_5

    :cond_5
    move p2, v0

    .line 4881
    :goto_5
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_6

    move p2, v1

    goto :goto_6

    :cond_6
    move p2, v0

    .line 4882
    :goto_6
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    and-int/lit16 p2, p1, 0x200

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_7

    :cond_7
    move p2, v0

    .line 4883
    :goto_7
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    and-int/lit16 p2, p1, 0x400

    if-eqz p2, :cond_8

    move p2, v1

    goto :goto_8

    :cond_8
    move p2, v0

    .line 4884
    :goto_8
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    and-int/lit16 p2, p1, 0x800

    if-eqz p2, :cond_9

    move p2, v1

    goto :goto_9

    :cond_9
    move p2, v0

    .line 4885
    :goto_9
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_a

    move p2, v1

    goto :goto_a

    :cond_a
    move p2, v0

    .line 4886
    :goto_a
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    and-int/lit16 p2, p1, 0x2000

    if-eqz p2, :cond_b

    move p2, v1

    goto :goto_b

    :cond_b
    move p2, v0

    .line 4887
    :goto_b
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_c

    move p2, v1

    goto :goto_c

    :cond_c
    move p2, v0

    .line 4888
    :goto_c
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    const p2, 0x8000

    and-int/2addr p2, p1

    if-eqz p2, :cond_d

    move p2, v1

    goto :goto_d

    :cond_d
    move p2, v0

    .line 4889
    :goto_d
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    const/high16 p2, 0x10000

    and-int/2addr p1, p2

    if-eqz p1, :cond_e

    move v0, v1

    .line 4890
    :cond_e
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 4894
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4895
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4896
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4897
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4898
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4899
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4900
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4901
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x80

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x81

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4902
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x200

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x201

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4903
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x400

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x401

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4904
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x800

    goto :goto_9

    :cond_9
    and-int/lit16 v0, v0, -0x801

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4905
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x1000

    goto :goto_a

    :cond_a
    and-int/lit16 v0, v0, -0x1001

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4906
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x2000

    goto :goto_b

    :cond_b
    and-int/lit16 v0, v0, -0x2001

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4907
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x4000

    goto :goto_c

    :cond_c
    and-int/lit16 v0, v0, -0x4001

    :goto_c
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4908
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    if-eqz v1, :cond_d

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_d

    :cond_d
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4909
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    if-eqz v1, :cond_e

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_e

    :cond_e
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_e
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4910
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
