.class public final enum Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;
.super Ljava/lang/Enum;
.source "SmartBotContentView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/smartpanel/view/SmartBotContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BotResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

.field public static final enum GIF:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

.field public static final enum TEXT:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    sget-object v1, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->TEXT:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->GIF:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 224
    new-instance v0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->TEXT:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    .line 225
    new-instance v0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    const-string v1, "GIF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->GIF:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    invoke-static {}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->$values()[Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    move-result-object v0

    sput-object v0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->$VALUES:[Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;
    .locals 1

    const-class v0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;
    .locals 1

    sget-object v0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->$VALUES:[Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    return-object v0
.end method
