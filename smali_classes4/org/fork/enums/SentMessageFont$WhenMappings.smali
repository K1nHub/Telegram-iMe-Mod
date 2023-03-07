.class public final synthetic Lorg/fork/enums/SentMessageFont$WhenMappings;
.super Ljava/lang/Object;
.source "SentMessageFont.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/enums/SentMessageFont;
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

    invoke-static {}, Lorg/fork/enums/SentMessageFont;->values()[Lorg/fork/enums/SentMessageFont;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/fork/enums/SentMessageFont;->REGULAR:Lorg/fork/enums/SentMessageFont;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SentMessageFont;->BOLD:Lorg/fork/enums/SentMessageFont;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SentMessageFont;->ITALIC:Lorg/fork/enums/SentMessageFont;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SentMessageFont;->UNDERLINE:Lorg/fork/enums/SentMessageFont;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SentMessageFont;->STRIKE:Lorg/fork/enums/SentMessageFont;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SentMessageFont;->MONO:Lorg/fork/enums/SentMessageFont;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SentMessageFont;->SPOILER:Lorg/fork/enums/SentMessageFont;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sput-object v0, Lorg/fork/enums/SentMessageFont$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
