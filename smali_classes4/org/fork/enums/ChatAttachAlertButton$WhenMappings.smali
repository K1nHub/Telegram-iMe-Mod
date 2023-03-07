.class public final synthetic Lorg/fork/enums/ChatAttachAlertButton$WhenMappings;
.super Ljava/lang/Object;
.source "ChatAttachAlertButton.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/enums/ChatAttachAlertButton;
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

    invoke-static {}, Lorg/fork/enums/ChatAttachAlertButton;->values()[Lorg/fork/enums/ChatAttachAlertButton;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/fork/enums/ChatAttachAlertButton;->DOCUMENTS:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ChatAttachAlertButton;->WALLET:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ChatAttachAlertButton;->BINANCE:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ChatAttachAlertButton;->GEO:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ChatAttachAlertButton;->POLL:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ChatAttachAlertButton;->MUSIC:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ChatAttachAlertButton;->CONTACT:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sput-object v0, Lorg/fork/enums/ChatAttachAlertButton$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
