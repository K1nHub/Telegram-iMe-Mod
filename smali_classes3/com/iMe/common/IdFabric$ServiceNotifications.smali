.class public Lcom/iMe/common/IdFabric$ServiceNotifications;
.super Ljava/lang/Object;
.source "IdFabric.java"


# static fields
.field public static final CHAT_PARTICIPANTS_PROCESSING:I

.field public static final CONTACTS_PROCESSING:I

.field public static final SERVICE_MESSAGES_REMOVING:I = -0x40000000

.field private static id:I = -0x40000000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, -0x40000000    # -2.0f

    add-int/lit8 v0, v0, 0x1

    .line 9
    sput v0, Lcom/iMe/common/IdFabric$ServiceNotifications;->id:I

    add-int/lit8 v1, v0, 0x1

    .line 10
    sput v1, Lcom/iMe/common/IdFabric$ServiceNotifications;->id:I

    sput v0, Lcom/iMe/common/IdFabric$ServiceNotifications;->CHAT_PARTICIPANTS_PROCESSING:I

    add-int/lit8 v0, v1, 0x1

    .line 11
    sput v0, Lcom/iMe/common/IdFabric$ServiceNotifications;->id:I

    sput v1, Lcom/iMe/common/IdFabric$ServiceNotifications;->CONTACTS_PROCESSING:I

    return-void
.end method
