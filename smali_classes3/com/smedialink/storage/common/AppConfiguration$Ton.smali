.class public final Lcom/smedialink/storage/common/AppConfiguration$Ton;
.super Ljava/lang/Object;
.source "AppConfiguration.kt"


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Ton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/common/AppConfiguration$Ton;

    invoke-direct {v0}, Lcom/smedialink/storage/common/AppConfiguration$Ton;-><init>()V

    sput-object v0, Lcom/smedialink/storage/common/AppConfiguration$Ton;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Ton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTonConfigFilename()Ljava/lang/String;
    .locals 1

    const-string v0, "https://ton.org/global-config-wallet.json"

    return-object v0
.end method
