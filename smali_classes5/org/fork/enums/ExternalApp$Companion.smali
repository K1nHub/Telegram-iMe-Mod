.class public final Lorg/fork/enums/ExternalApp$Companion;
.super Ljava/lang/Object;
.source "ExternalApp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/enums/ExternalApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/enums/ExternalApp$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMessengersForForward()[Lorg/fork/enums/ExternalApp;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/fork/enums/ExternalApp;

    .line 20
    sget-object v1, Lorg/fork/enums/ExternalApp;->WHATSAPP:Lorg/fork/enums/ExternalApp;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/ExternalApp;->WHATSAPP_BUSINESS:Lorg/fork/enums/ExternalApp;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/ExternalApp;->VIBER:Lorg/fork/enums/ExternalApp;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
