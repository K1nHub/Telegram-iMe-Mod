.class public abstract Lorg/telegram/tgnet/TLRPC$KeyboardButton;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public bot:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public button_id:I

.field public data:[B

.field public flags:I

.field public fwd_text:Ljava/lang/String;

.field public inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public query:Ljava/lang/String;

.field public quiz:Z

.field public request_write_access:Z

.field public requires_password:Z

.field public same_peer:Z

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public user_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18771
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 18821
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback_layer117;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback_layer117;-><init>()V

    goto/16 :goto_0

    .line 18797
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;-><init>()V

    goto :goto_0

    .line 18827
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;-><init>()V

    goto :goto_0

    .line 18833
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUserProfile;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUserProfile;-><init>()V

    goto :goto_0

    .line 18800
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;-><init>()V

    goto :goto_0

    .line 18836
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonWebView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonWebView;-><init>()V

    goto :goto_0

    .line 18809
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrlAuth;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrlAuth;-><init>()V

    goto :goto_0

    .line 18839
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;-><init>()V

    goto :goto_0

    .line 18803
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;-><init>()V

    goto :goto_0

    .line 18806
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation;-><init>()V

    goto :goto_0

    .line 18830
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUserProfile;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUserProfile;-><init>()V

    goto :goto_0

    .line 18812
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUrlAuth;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputKeyboardButtonUrlAuth;-><init>()V

    goto :goto_0

    .line 18815
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPoll;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPoll;-><init>()V

    goto :goto_0

    .line 18794
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone;-><init>()V

    goto :goto_0

    .line 18818
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;-><init>()V

    goto :goto_0

    .line 18824
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;-><init>()V

    goto :goto_0

    .line 18791
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSimpleWebView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSimpleWebView;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 18843
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in KeyboardButton"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 18846
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f3fafa4 -> :sswitch_10
        -0x5d05b780 -> :sswitch_f
        -0x5026c045 -> :sswitch_e
        -0x4e9593d7 -> :sswitch_d
        -0x4438aea3 -> :sswitch_c
        -0x2fd1802c -> :sswitch_b
        -0x1677fc85 -> :sswitch_a
        -0x38694c1 -> :sswitch_9
        0x568a748 -> :sswitch_8
        0xd0b468c -> :sswitch_7
        0x10b78d29 -> :sswitch_6
        0x13767230 -> :sswitch_5
        0x258aff05 -> :sswitch_4
        0x308660c1 -> :sswitch_3
        0x35bbdb6b -> :sswitch_2
        0x50f41ccf -> :sswitch_1
        0x683a5e46 -> :sswitch_0
    .end sparse-switch
.end method
