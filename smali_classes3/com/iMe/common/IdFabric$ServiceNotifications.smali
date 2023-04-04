.class public Lcom/iMe/common/IdFabric$ServiceNotifications;
.super Ljava/lang/Object;
.source "IdFabric.java"


# static fields
.field public static final chat_participants_processing:I

.field public static final contacts_processing:I

.field private static id:I = -0x40000000

.field public static final service_messages_removing:I = -0x40000000


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

    sput v0, Lcom/iMe/common/IdFabric$ServiceNotifications;->chat_participants_processing:I

    add-int/lit8 v0, v1, 0x1

    .line 11
    sput v0, Lcom/iMe/common/IdFabric$ServiceNotifications;->id:I

    sput v1, Lcom/iMe/common/IdFabric$ServiceNotifications;->contacts_processing:I

    return-void
.end method
