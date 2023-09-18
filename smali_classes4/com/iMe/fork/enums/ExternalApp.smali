.class public final enum Lcom/iMe/fork/enums/ExternalApp;
.super Ljava/lang/Enum;
.source "ExternalApp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/ExternalApp$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/ExternalApp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/ExternalApp;

.field public static final Companion:Lcom/iMe/fork/enums/ExternalApp$Companion;

.field public static final enum QUICK_LOGIN:Lcom/iMe/fork/enums/ExternalApp;

.field public static final enum VIBER:Lcom/iMe/fork/enums/ExternalApp;

.field public static final enum WHATSAPP:Lcom/iMe/fork/enums/ExternalApp;

.field public static final enum WHATSAPP_BUSINESS:Lcom/iMe/fork/enums/ExternalApp;


# instance fields
.field private final packageName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/ExternalApp;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/fork/enums/ExternalApp;

    sget-object v1, Lcom/iMe/fork/enums/ExternalApp;->WHATSAPP:Lcom/iMe/fork/enums/ExternalApp;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExternalApp;->WHATSAPP_BUSINESS:Lcom/iMe/fork/enums/ExternalApp;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExternalApp;->VIBER:Lcom/iMe/fork/enums/ExternalApp;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ExternalApp;->QUICK_LOGIN:Lcom/iMe/fork/enums/ExternalApp;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/iMe/fork/enums/ExternalApp;

    const-string v1, "WHATSAPP"

    const/4 v2, 0x0

    const-string v3, "com.whatsapp"

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/fork/enums/ExternalApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/fork/enums/ExternalApp;->WHATSAPP:Lcom/iMe/fork/enums/ExternalApp;

    .line 8
    new-instance v0, Lcom/iMe/fork/enums/ExternalApp;

    const-string v1, "WHATSAPP_BUSINESS"

    const/4 v2, 0x1

    const-string v3, "com.whatsapp.w4b"

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/fork/enums/ExternalApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/fork/enums/ExternalApp;->WHATSAPP_BUSINESS:Lcom/iMe/fork/enums/ExternalApp;

    .line 9
    new-instance v0, Lcom/iMe/fork/enums/ExternalApp;

    const-string v1, "VIBER"

    const/4 v2, 0x2

    const-string v3, "com.viber.voip"

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/fork/enums/ExternalApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/fork/enums/ExternalApp;->VIBER:Lcom/iMe/fork/enums/ExternalApp;

    .line 10
    new-instance v0, Lcom/iMe/fork/enums/ExternalApp;

    const-string v1, "QUICK_LOGIN"

    const/4 v2, 0x3

    const-string v3, "com.iMe.quicklogin"

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/fork/enums/ExternalApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/fork/enums/ExternalApp;->QUICK_LOGIN:Lcom/iMe/fork/enums/ExternalApp;

    invoke-static {}, Lcom/iMe/fork/enums/ExternalApp;->$values()[Lcom/iMe/fork/enums/ExternalApp;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/ExternalApp;->$VALUES:[Lcom/iMe/fork/enums/ExternalApp;

    new-instance v0, Lcom/iMe/fork/enums/ExternalApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/ExternalApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ExternalApp;->Companion:Lcom/iMe/fork/enums/ExternalApp$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iMe/fork/enums/ExternalApp;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static final getMessengersForForward()[Lcom/iMe/fork/enums/ExternalApp;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ExternalApp;->Companion:Lcom/iMe/fork/enums/ExternalApp$Companion;

    invoke-virtual {v0}, Lcom/iMe/fork/enums/ExternalApp$Companion;->getMessengersForForward()[Lcom/iMe/fork/enums/ExternalApp;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/ExternalApp;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/ExternalApp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/ExternalApp;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/ExternalApp;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ExternalApp;->$VALUES:[Lcom/iMe/fork/enums/ExternalApp;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/ExternalApp;

    return-object v0
.end method


# virtual methods
.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/fork/enums/ExternalApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final isInstalled()Z
    .locals 3

    const/4 v0, 0x0

    .line 13
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/enums/ExternalApp;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method
