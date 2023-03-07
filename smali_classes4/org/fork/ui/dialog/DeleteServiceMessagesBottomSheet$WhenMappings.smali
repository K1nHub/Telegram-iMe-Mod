.class public final synthetic Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$WhenMappings;
.super Ljava/lang/Object;
.source "DeleteServiceMessagesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/fork/enums/ServiceMessageType;->values()[Lorg/fork/enums/ServiceMessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->CHAT_CREATED:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->TITLE_EDITED:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->PHOTO_CHANGED:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->PHOTO_DELETED:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->USER_ADDED:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->USER_LEFT:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->USER_JOINED_LINK:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->MESSAGE_PINNED:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->GAME_SCORE:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->PAYMENT_SENT:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->SCREENSHOT_TAKEN:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->GEO_PROXIMITY_REACHED:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->GROUP_CALL:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->GROUP_CALL_SCHEDULED:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->GROUP_CALL_INVITE:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->TTL_CHANGE:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->SET_MESSAGES_TTL:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1

    sput-object v0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
