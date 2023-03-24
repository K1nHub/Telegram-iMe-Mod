.class public abstract Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public flags:I

.field public is_persistent:Z

.field public placeholder:Ljava/lang/String;

.field public resize:Z

.field public rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;",
            ">;"
        }
    .end annotation
.end field

.field public selective:Z

.field public single_use:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11458
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 11465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 11487
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;-><init>()V

    goto :goto_0

    .line 11481
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup_layer129;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup_layer129;-><init>()V

    goto :goto_0

    .line 11484
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply_layer129;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply_layer129;-><init>()V

    goto :goto_0

    .line 11475
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    goto :goto_0

    .line 11478
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;-><init>()V

    goto :goto_0

    .line 11472
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 11491
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in ReplyMarkup"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 11494
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a22662f -> :sswitch_5
        -0x794bf4f8 -> :sswitch_4
        -0x5fc1a47b -> :sswitch_3
        -0xbef7560 -> :sswitch_2
        0x3502758c -> :sswitch_1
        0x48a30254 -> :sswitch_0
    .end sparse-switch
.end method
