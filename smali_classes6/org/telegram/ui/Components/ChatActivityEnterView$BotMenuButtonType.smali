.class public final enum Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;
.super Ljava/lang/Enum;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BotMenuButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

.field public static final enum COMMANDS:Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

.field public static final enum NO_BUTTON:Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

.field public static final enum TEMPLATES:Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

.field public static final enum WEB_VIEW:Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 12180
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    const-string v1, "TEMPLATES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;->TEMPLATES:Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    .line 12181
    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    const-string v3, "NO_BUTTON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;->NO_BUTTON:Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    .line 12182
    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    const-string v5, "COMMANDS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;->COMMANDS:Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    .line 12183
    new-instance v5, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    const-string v7, "WEB_VIEW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;->WEB_VIEW:Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 12179
    sput-object v7, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;->$VALUES:[Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;
    .locals 1

    .line 12179
    const-class v0, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;
    .locals 1

    .line 12179
    sget-object v0, Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;->$VALUES:[Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/ChatActivityEnterView$BotMenuButtonType;

    return-object v0
.end method
