.class public final enum Lcom/iMe/fork/enums/ServiceMessageType;
.super Ljava/lang/Enum;
.source "ServiceMessageType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/ServiceMessageType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/ServiceMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum ALL:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum CHAT_CREATED:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final Companion:Lcom/iMe/fork/enums/ServiceMessageType$Companion;

.field public static final enum GAME_SCORE:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum GEO_PROXIMITY_REACHED:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum GROUP_CALL:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum GROUP_CALL_INVITE:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum GROUP_CALL_SCHEDULED:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum MESSAGE_PINNED:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum PAYMENT_SENT:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum PHOTO_CHANGED:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum PHOTO_DELETED:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum SCREENSHOT_TAKEN:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum SET_MESSAGES_TTL:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum TITLE_EDITED:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum TTL_CHANGE:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum USER_ADDED:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum USER_JOINED_LINK:Lcom/iMe/fork/enums/ServiceMessageType;

.field public static final enum USER_LEFT:Lcom/iMe/fork/enums/ServiceMessageType;


# instance fields
.field private final action:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$MessageAction;",
            ">;"
        }
    .end annotation
.end field

.field private final channelCode:Ljava/lang/Integer;

.field private final groupCode:Ljava/lang/Integer;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/ServiceMessageType;
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/iMe/fork/enums/ServiceMessageType;

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->ALL:Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->CHAT_CREATED:Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->TITLE_EDITED:Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->PHOTO_CHANGED:Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->PHOTO_DELETED:Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->USER_ADDED:Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->USER_LEFT:Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->USER_JOINED_LINK:Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->MESSAGE_PINNED:Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->GAME_SCORE:Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->PAYMENT_SENT:Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->SCREENSHOT_TAKEN:Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->GEO_PROXIMITY_REACHED:Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->GROUP_CALL:Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->GROUP_CALL_SCHEDULED:Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->GROUP_CALL_INVITE:Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->TTL_CHANGE:Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ServiceMessageType;->SET_MESSAGES_TTL:Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 33

    .line 11
    new-instance v6, Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Lorg/telegram/tgnet/TLRPC$MessageAction;

    const-string v1, "ALL"

    const/4 v2, 0x0

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v6, Lcom/iMe/fork/enums/ServiceMessageType;->ALL:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 12
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    const-string v8, "CHAT_CREATED"

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v7, v0

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->CHAT_CREATED:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 13
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-class v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    const-string v3, "TITLE_EDITED"

    const/4 v4, 0x2

    move-object v2, v0

    move-object v5, v11

    invoke-direct/range {v2 .. v7}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->TITLE_EDITED:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 14
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    const-string v8, "PHOTO_CHANGED"

    const/4 v9, 0x3

    move-object v7, v0

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->PHOTO_CHANGED:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 15
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-class v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    const-string v3, "PHOTO_DELETED"

    const/4 v4, 0x4

    move-object v2, v0

    move-object v5, v11

    invoke-direct/range {v2 .. v7}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->PHOTO_DELETED:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 16
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v17, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    const-string v13, "USER_ADDED"

    const/4 v14, 0x5

    const/16 v16, 0x0

    move-object v12, v0

    move-object v15, v6

    invoke-direct/range {v12 .. v17}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->USER_ADDED:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 17
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-class v23, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    const-string v19, "USER_LEFT"

    const/16 v20, 0x6

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move-object/from16 v21, v16

    invoke-direct/range {v18 .. v23}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->USER_LEFT:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 18
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-class v29, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    const-string v25, "USER_JOINED_LINK"

    const/16 v26, 0x7

    const/16 v28, 0x0

    move-object/from16 v24, v0

    move-object/from16 v27, v21

    invoke-direct/range {v24 .. v29}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->USER_JOINED_LINK:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 19
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const-class v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    const-string v8, "MESSAGE_PINNED"

    const/16 v9, 0x8

    move-object v7, v0

    move-object/from16 v10, v26

    invoke-direct/range {v7 .. v12}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->MESSAGE_PINNED:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 20
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-class v32, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    const-string v28, "GAME_SCORE"

    const/16 v29, 0x9

    const/16 v31, 0x0

    move-object/from16 v27, v0

    move-object/from16 v30, v11

    invoke-direct/range {v27 .. v32}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->GAME_SCORE:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 21
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-class v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    const-string v3, "PAYMENT_SENT"

    const/16 v4, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->PAYMENT_SENT:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 22
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const-class v32, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;

    const-string v28, "SCREENSHOT_TAKEN"

    const/16 v29, 0xb

    move-object/from16 v27, v0

    invoke-direct/range {v27 .. v32}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->SCREENSHOT_TAKEN:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 23
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;

    const-string v2, "GEO_PROXIMITY_REACHED"

    const/16 v3, 0xc

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->GEO_PROXIMITY_REACHED:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 24
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-class v17, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCall;

    const-string v13, "GROUP_CALL"

    const/16 v14, 0xd

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->GROUP_CALL:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 25
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-class v22, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCallScheduled;

    const-string v18, "GROUP_CALL_SCHEDULED"

    const/16 v19, 0xe

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->GROUP_CALL_SCHEDULED:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 26
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall;

    const-string v2, "GROUP_CALL_INVITE"

    const/16 v3, 0xf

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->GROUP_CALL_INVITE:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 27
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const-class v27, Lorg/telegram/tgnet/TLRPC$TL_messageActionTTLChange;

    const-string v23, "TTL_CHANGE"

    const/16 v24, 0x10

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v27}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->TTL_CHANGE:Lcom/iMe/fork/enums/ServiceMessageType;

    .line 28
    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-class v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL;

    const-string v8, "SET_MESSAGES_TTL"

    const/16 v9, 0x11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/iMe/fork/enums/ServiceMessageType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->SET_MESSAGES_TTL:Lcom/iMe/fork/enums/ServiceMessageType;

    invoke-static {}, Lcom/iMe/fork/enums/ServiceMessageType;->$values()[Lcom/iMe/fork/enums/ServiceMessageType;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->$VALUES:[Lcom/iMe/fork/enums/ServiceMessageType;

    new-instance v0, Lcom/iMe/fork/enums/ServiceMessageType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/ServiceMessageType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->Companion:Lcom/iMe/fork/enums/ServiceMessageType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$MessageAction;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput-object p3, p0, Lcom/iMe/fork/enums/ServiceMessageType;->groupCode:Ljava/lang/Integer;

    .line 8
    iput-object p4, p0, Lcom/iMe/fork/enums/ServiceMessageType;->channelCode:Ljava/lang/Integer;

    .line 9
    iput-object p5, p0, Lcom/iMe/fork/enums/ServiceMessageType;->action:Ljava/lang/Class;

    return-void
.end method

.method public static final getByCode(IZ)Lcom/iMe/fork/enums/ServiceMessageType;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->Companion:Lcom/iMe/fork/enums/ServiceMessageType$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/iMe/fork/enums/ServiceMessageType$Companion;->getByCode(IZ)Lcom/iMe/fork/enums/ServiceMessageType;

    move-result-object p0

    return-object p0
.end method

.method public static final getValues(Z)[Lcom/iMe/fork/enums/ServiceMessageType;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->Companion:Lcom/iMe/fork/enums/ServiceMessageType$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/ServiceMessageType$Companion;->getValues(Z)[Lcom/iMe/fork/enums/ServiceMessageType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/ServiceMessageType;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/ServiceMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/ServiceMessageType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/ServiceMessageType;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->$VALUES:[Lcom/iMe/fork/enums/ServiceMessageType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/ServiceMessageType;

    return-object v0
.end method


# virtual methods
.method public final getAction()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$MessageAction;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/iMe/fork/enums/ServiceMessageType;->action:Ljava/lang/Class;

    return-object v0
.end method

.method public final getChannelCode()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/fork/enums/ServiceMessageType;->channelCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCode(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/iMe/fork/enums/ServiceMessageType;->channelCode:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/enums/ServiceMessageType;->groupCode:Ljava/lang/Integer;

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final getGroupCode()Ljava/lang/Integer;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/fork/enums/ServiceMessageType;->groupCode:Ljava/lang/Integer;

    return-object v0
.end method
