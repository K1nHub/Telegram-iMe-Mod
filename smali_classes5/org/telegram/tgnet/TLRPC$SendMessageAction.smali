.class public abstract Lorg/telegram/tgnet/TLRPC$SendMessageAction;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public progress:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6872
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 6909
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageChooseContactAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageChooseContactAction;-><init>()V

    goto/16 :goto_0

    .line 6939
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteraction;-><init>()V

    goto/16 :goto_0

    .line 6918
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadRoundAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadRoundAction;-><init>()V

    goto/16 :goto_0

    .line 6906
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGeoLocationAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGeoLocationAction;-><init>()V

    goto/16 :goto_0

    .line 6921
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    goto/16 :goto_0

    .line 6903
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;-><init>()V

    goto/16 :goto_0

    .line 6891
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction;-><init>()V

    goto :goto_0

    .line 6900
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;-><init>()V

    goto :goto_0

    .line 6888
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction_old;-><init>()V

    goto :goto_0

    .line 6879
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGamePlayAction;-><init>()V

    goto :goto_0

    .line 6924
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageHistoryImportAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageHistoryImportAction;-><init>()V

    goto :goto_0

    .line 6933
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_speakingInGroupCallAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_speakingInGroupCallAction;-><init>()V

    goto :goto_0

    .line 6882
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;-><init>()V

    goto :goto_0

    .line 6894
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;-><init>()V

    goto :goto_0

    .line 6942
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteractionSeen;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageEmojiInteractionSeen;-><init>()V

    goto :goto_0

    .line 6912
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageChooseStickerAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageChooseStickerAction;-><init>()V

    goto :goto_0

    .line 6930
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;-><init>()V

    goto :goto_0

    .line 6936
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;-><init>()V

    goto :goto_0

    .line 6927
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction_old;-><init>()V

    goto :goto_0

    .line 6885
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction_old;-><init>()V

    goto :goto_0

    .line 6897
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction_old;-><init>()V

    goto :goto_0

    .line 6915
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordRoundAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordRoundAction;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 6946
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in SendMessageAction"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 6949
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x770d8044 -> :sswitch_15
        -0x70511672 -> :sswitch_14
        -0x6dfbd009 -> :sswitch_13
        -0x66f5c3e6 -> :sswitch_12
        -0x5e782991 -> :sswitch_11
        -0x55f3261c -> :sswitch_10
        -0x4fa5394f -> :sswitch_f
        -0x499a6fd2 -> :sswitch_e
        -0x2e2cb5da -> :sswitch_d
        -0x2ad08c09 -> :sswitch_c
        -0x26d3dd7b -> :sswitch_b
        -0x24256dba -> :sswitch_a
        -0x229570b8 -> :sswitch_9
        -0x19537591 -> :sswitch_8
        -0x1689c514 -> :sswitch_7
        -0xcae2855 -> :sswitch_6
        -0x2a1370b -> :sswitch_5
        0x16bf744e -> :sswitch_4
        0x176f8ba1 -> :sswitch_3
        0x243e1c66 -> :sswitch_2
        0x25972bcb -> :sswitch_1
        0x628cbc6f -> :sswitch_0
    .end sparse-switch
.end method
