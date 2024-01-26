.class public final Lcom/iMe/common/TelegramConstants;
.super Ljava/lang/Object;
.source "TelegramConstants.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/common/TelegramConstants;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/common/TelegramConstants;

    invoke-direct {v0}, Lcom/iMe/common/TelegramConstants;-><init>()V

    sput-object v0, Lcom/iMe/common/TelegramConstants;->INSTANCE:Lcom/iMe/common/TelegramConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final prepareChatIdForBotAPI(J)J
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method
