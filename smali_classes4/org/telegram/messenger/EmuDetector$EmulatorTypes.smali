.class final enum Lorg/telegram/messenger/EmuDetector$EmulatorTypes;
.super Ljava/lang/Enum;
.source "EmuDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/EmuDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EmulatorTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/telegram/messenger/EmuDetector$EmulatorTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

.field public static final enum ANDY:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

.field public static final enum BLUE:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

.field public static final enum GENY:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

.field public static final enum NOX:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

.field public static final enum PIPES:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

.field public static final enum X86:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 40
    new-instance v0, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    const-string v1, "GENY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->GENY:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    new-instance v1, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    const-string v3, "ANDY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->ANDY:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    new-instance v3, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    const-string v5, "NOX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->NOX:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    new-instance v5, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    const-string v7, "BLUE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->BLUE:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    new-instance v7, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    const-string v9, "PIPES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->PIPES:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    new-instance v9, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    const-string v11, "X86"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->X86:Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    const/4 v11, 0x6

    new-array v11, v11, [Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 39
    sput-object v11, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->$VALUES:[Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/messenger/EmuDetector$EmulatorTypes;
    .locals 1

    .line 39
    const-class v0, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    return-object p0
.end method

.method public static values()[Lorg/telegram/messenger/EmuDetector$EmulatorTypes;
    .locals 1

    .line 39
    sget-object v0, Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->$VALUES:[Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    invoke-virtual {v0}, [Lorg/telegram/messenger/EmuDetector$EmulatorTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/EmuDetector$EmulatorTypes;

    return-object v0
.end method
