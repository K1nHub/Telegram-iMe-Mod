.class public abstract Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47381
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 47396
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported_layer131;-><init>()V

    goto :goto_0

    .line 47393
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty_layer122;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteEmpty_layer122;-><init>()V

    goto :goto_0

    .line 47387
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;-><init>()V

    goto :goto_0

    .line 47399
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported_layer122;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported_layer122;-><init>()V

    goto :goto_0

    .line 47402
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInvitePublicJoinRequests;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInvitePublicJoinRequests;-><init>()V

    goto :goto_0

    .line 47390
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported_layer133;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported_layer133;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 47406
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in ExportedChatInvite"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 47409
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4e7efa18 -> :sswitch_5
        -0x12ef8549 -> :sswitch_4
        -0x3d1fa44 -> :sswitch_3
        0xab4a819 -> :sswitch_2
        0x69df3769 -> :sswitch_1
        0x6e24fc9d -> :sswitch_0
    .end sparse-switch
.end method
