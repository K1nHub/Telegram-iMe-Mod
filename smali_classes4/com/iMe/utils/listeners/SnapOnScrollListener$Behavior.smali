.class public final enum Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;
.super Ljava/lang/Enum;
.source "SnapOnScrollListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/utils/listeners/SnapOnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

.field public static final enum NOTIFY_ON_SCROLL:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

.field public static final enum NOTIFY_ON_SCROLL_STATE_IDLE:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    sget-object v1, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;->NOTIFY_ON_SCROLL:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;->NOTIFY_ON_SCROLL_STATE_IDLE:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    const-string v1, "NOTIFY_ON_SCROLL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;->NOTIFY_ON_SCROLL:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    .line 49
    new-instance v0, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    const-string v1, "NOTIFY_ON_SCROLL_STATE_IDLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;->NOTIFY_ON_SCROLL_STATE_IDLE:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    invoke-static {}, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;->$values()[Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    move-result-object v0

    sput-object v0, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;->$VALUES:[Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;
    .locals 1

    const-class v0, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    return-object p0
.end method

.method public static values()[Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;
    .locals 1

    sget-object v0, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;->$VALUES:[Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    return-object v0
.end method
