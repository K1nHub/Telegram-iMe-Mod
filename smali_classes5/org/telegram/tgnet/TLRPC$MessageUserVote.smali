.class public abstract Lorg/telegram/tgnet/TLRPC$MessageUserVote;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public date:I

.field public user_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30846
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageUserVote;
    .locals 1

    const v0, -0x759a1aa9

    if-eq p1, v0, :cond_2

    const v0, 0x34d247b4

    if-eq p1, v0, :cond_1

    const v0, 0x3ca5b0ec

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 30858
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageUserVoteInputOption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageUserVoteInputOption;-><init>()V

    goto :goto_0

    .line 30855
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageUserVote;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageUserVote;-><init>()V

    goto :goto_0

    .line 30861
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageUserVoteMultiple;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageUserVoteMultiple;-><init>()V

    :goto_0
    if-nez v0, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    .line 30865
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in MessageUserVote"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 30868
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_5
    return-object v0
.end method
