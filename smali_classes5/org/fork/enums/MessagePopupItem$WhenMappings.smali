.class public final synthetic Lorg/fork/enums/MessagePopupItem$WhenMappings;
.super Ljava/lang/Object;
.source "MessagePopupItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/enums/MessagePopupItem;
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

    invoke-static {}, Lorg/fork/enums/MessagePopupItem;->values()[Lorg/fork/enums/MessagePopupItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/fork/enums/MessagePopupItem;->FORWARD_CLOUD:Lorg/fork/enums/MessagePopupItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/MessagePopupItem;->SHARE:Lorg/fork/enums/MessagePopupItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/MessagePopupItem;->FORWARD_MESSENGERS:Lorg/fork/enums/MessagePopupItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/MessagePopupItem;->TRANSLATE:Lorg/fork/enums/MessagePopupItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/MessagePopupItem;->COPY_PART:Lorg/fork/enums/MessagePopupItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/MessagePopupItem;->COPY_IMAGE:Lorg/fork/enums/MessagePopupItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/MessagePopupItem;->SAVE_AS:Lorg/fork/enums/MessagePopupItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sput-object v0, Lorg/fork/enums/MessagePopupItem$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
