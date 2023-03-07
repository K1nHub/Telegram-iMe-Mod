.class public final enum Lcom/smedialink/ui/drawer/DrawerAccountData;
.super Ljava/lang/Enum;
.source "DrawerAccountData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/drawer/DrawerAccountData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/ui/drawer/DrawerAccountData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/ui/drawer/DrawerAccountData;

.field public static final Companion:Lcom/smedialink/ui/drawer/DrawerAccountData$Companion;

.field public static final enum NAME:Lcom/smedialink/ui/drawer/DrawerAccountData;

.field public static final enum PHONE:Lcom/smedialink/ui/drawer/DrawerAccountData;

.field public static final enum USERNAME:Lcom/smedialink/ui/drawer/DrawerAccountData;

.field public static final enum USER_ID:Lcom/smedialink/ui/drawer/DrawerAccountData;


# instance fields
.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/ui/drawer/DrawerAccountData;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/ui/drawer/DrawerAccountData;

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerAccountData;->PHONE:Lcom/smedialink/ui/drawer/DrawerAccountData;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerAccountData;->USERNAME:Lcom/smedialink/ui/drawer/DrawerAccountData;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerAccountData;->NAME:Lcom/smedialink/ui/drawer/DrawerAccountData;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerAccountData;->USER_ID:Lcom/smedialink/ui/drawer/DrawerAccountData;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/smedialink/ui/drawer/DrawerAccountData;

    sget v1, Lorg/telegram/messenger/R$string;->drawer_profile_cell_alert_phone_number:I

    const-string v2, "PHONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/ui/drawer/DrawerAccountData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/ui/drawer/DrawerAccountData;->PHONE:Lcom/smedialink/ui/drawer/DrawerAccountData;

    .line 9
    new-instance v0, Lcom/smedialink/ui/drawer/DrawerAccountData;

    sget v1, Lorg/telegram/messenger/R$string;->drawer_profile_cell_alert_username:I

    const-string v2, "USERNAME"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/ui/drawer/DrawerAccountData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/ui/drawer/DrawerAccountData;->USERNAME:Lcom/smedialink/ui/drawer/DrawerAccountData;

    .line 10
    new-instance v0, Lcom/smedialink/ui/drawer/DrawerAccountData;

    sget v1, Lorg/telegram/messenger/R$string;->drawer_profile_cell_alert_name:I

    const-string v2, "NAME"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/ui/drawer/DrawerAccountData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/ui/drawer/DrawerAccountData;->NAME:Lcom/smedialink/ui/drawer/DrawerAccountData;

    .line 11
    new-instance v0, Lcom/smedialink/ui/drawer/DrawerAccountData;

    sget v1, Lorg/telegram/messenger/R$string;->drawer_profile_cell_alert_user_id:I

    const-string v2, "USER_ID"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/ui/drawer/DrawerAccountData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/ui/drawer/DrawerAccountData;->USER_ID:Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-static {}, Lcom/smedialink/ui/drawer/DrawerAccountData;->$values()[Lcom/smedialink/ui/drawer/DrawerAccountData;

    move-result-object v0

    sput-object v0, Lcom/smedialink/ui/drawer/DrawerAccountData;->$VALUES:[Lcom/smedialink/ui/drawer/DrawerAccountData;

    new-instance v0, Lcom/smedialink/ui/drawer/DrawerAccountData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/drawer/DrawerAccountData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/drawer/DrawerAccountData;->Companion:Lcom/smedialink/ui/drawer/DrawerAccountData$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/smedialink/ui/drawer/DrawerAccountData;->titleResId:I

    return-void
.end method

.method public static final mapNameToEnum(Ljava/lang/String;Lcom/smedialink/ui/drawer/DrawerAccountData;)Lcom/smedialink/ui/drawer/DrawerAccountData;
    .locals 1

    sget-object v0, Lcom/smedialink/ui/drawer/DrawerAccountData;->Companion:Lcom/smedialink/ui/drawer/DrawerAccountData$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/smedialink/ui/drawer/DrawerAccountData$Companion;->mapNameToEnum(Ljava/lang/String;Lcom/smedialink/ui/drawer/DrawerAccountData;)Lcom/smedialink/ui/drawer/DrawerAccountData;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/ui/drawer/DrawerAccountData;
    .locals 1

    const-class v0, Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/drawer/DrawerAccountData;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/ui/drawer/DrawerAccountData;
    .locals 1

    sget-object v0, Lcom/smedialink/ui/drawer/DrawerAccountData;->$VALUES:[Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/ui/drawer/DrawerAccountData;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 13
    iget v0, p0, Lcom/smedialink/ui/drawer/DrawerAccountData;->titleResId:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(titleResId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/ui/drawer/DrawerAccountData;->titleResId:I

    return v0
.end method
