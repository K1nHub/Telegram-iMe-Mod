.class public final enum Lcom/iMe/fork/enums/AppLaunchCountAction;
.super Ljava/lang/Enum;
.source "AppLaunchCountAction.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/AppLaunchCountAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/AppLaunchCountAction;

.field public static final enum PROMO_SUBSCRIBE_DIALOG:Lcom/iMe/fork/enums/AppLaunchCountAction;


# instance fields
.field private final launchCount:I

.field private final prefKey:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/AppLaunchCountAction;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/iMe/fork/enums/AppLaunchCountAction;

    sget-object v1, Lcom/iMe/fork/enums/AppLaunchCountAction;->PROMO_SUBSCRIBE_DIALOG:Lcom/iMe/fork/enums/AppLaunchCountAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/iMe/fork/enums/AppLaunchCountAction;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->promoSubscribeDialogLaunchCountLeft()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->promoSubscribeDialogLaunchCountLeft()I

    move-result v2

    const-string v3, "PROMO_SUBSCRIBE_DIALOG"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/iMe/fork/enums/AppLaunchCountAction;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/AppLaunchCountAction;->PROMO_SUBSCRIBE_DIALOG:Lcom/iMe/fork/enums/AppLaunchCountAction;

    invoke-static {}, Lcom/iMe/fork/enums/AppLaunchCountAction;->$values()[Lcom/iMe/fork/enums/AppLaunchCountAction;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/AppLaunchCountAction;->$VALUES:[Lcom/iMe/fork/enums/AppLaunchCountAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iMe/fork/enums/AppLaunchCountAction;->prefKey:Ljava/lang/String;

    iput p4, p0, Lcom/iMe/fork/enums/AppLaunchCountAction;->launchCount:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/AppLaunchCountAction;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/AppLaunchCountAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/AppLaunchCountAction;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/AppLaunchCountAction;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/AppLaunchCountAction;->$VALUES:[Lcom/iMe/fork/enums/AppLaunchCountAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/AppLaunchCountAction;

    return-object v0
.end method


# virtual methods
.method public final getLaunchCount()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/iMe/fork/enums/AppLaunchCountAction;->launchCount:I

    return v0
.end method

.method public final getPrefKey()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/fork/enums/AppLaunchCountAction;->prefKey:Ljava/lang/String;

    return-object v0
.end method
