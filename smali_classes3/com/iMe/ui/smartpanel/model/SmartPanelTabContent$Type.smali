.class public final enum Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;
.super Ljava/lang/Enum;
.source "SmartPanelTabContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

.field public static final enum ADVERT_BOT_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

.field public static final enum BOT_MEDIA_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

.field public static final enum NORMAL_BOT_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

.field public static final enum NORMAL_BOT_LABEL:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    sget-object v1, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->NORMAL_BOT_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->ADVERT_BOT_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->NORMAL_BOT_LABEL:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->BOT_MEDIA_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    const-string v1, "NORMAL_BOT_ANSWER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->NORMAL_BOT_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    .line 9
    new-instance v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    const-string v1, "ADVERT_BOT_ANSWER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->ADVERT_BOT_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    .line 10
    new-instance v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    const-string v1, "NORMAL_BOT_LABEL"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->NORMAL_BOT_LABEL:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    .line 11
    new-instance v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    const-string v1, "BOT_MEDIA_ANSWER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->BOT_MEDIA_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    invoke-static {}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->$values()[Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v0

    sput-object v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->$VALUES:[Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

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

    iput p3, p0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;
    .locals 1

    const-class v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    return-object p0
.end method

.method public static values()[Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;
    .locals 1

    sget-object v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->$VALUES:[Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->value:I

    return v0
.end method
