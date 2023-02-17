.class public final enum Lorg/fork/enums/VideoVoiceCamera;
.super Ljava/lang/Enum;
.source "VideoVoiceCamera.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/VideoVoiceCamera$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/VideoVoiceCamera;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/VideoVoiceCamera;

.field public static final enum ASK:Lorg/fork/enums/VideoVoiceCamera;

.field public static final enum BACK:Lorg/fork/enums/VideoVoiceCamera;

.field public static final Companion:Lorg/fork/enums/VideoVoiceCamera$Companion;

.field public static final enum FRONT:Lorg/fork/enums/VideoVoiceCamera;


# instance fields
.field private final shortTextResId:I

.field private final textResId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/VideoVoiceCamera;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/fork/enums/VideoVoiceCamera;

    sget-object v1, Lorg/fork/enums/VideoVoiceCamera;->FRONT:Lorg/fork/enums/VideoVoiceCamera;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/VideoVoiceCamera;->BACK:Lorg/fork/enums/VideoVoiceCamera;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/VideoVoiceCamera;->ASK:Lorg/fork/enums/VideoVoiceCamera;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lorg/fork/enums/VideoVoiceCamera;

    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_video_voice_front_camera:I

    sget v2, Lorg/telegram/messenger/R$string;->settings_interface_video_voice_front_camera_short:I

    const-string v3, "FRONT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fork/enums/VideoVoiceCamera;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/VideoVoiceCamera;->FRONT:Lorg/fork/enums/VideoVoiceCamera;

    .line 8
    new-instance v0, Lorg/fork/enums/VideoVoiceCamera;

    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_video_voice_back_camera:I

    sget v2, Lorg/telegram/messenger/R$string;->settings_interface_video_voice_back_camera_short:I

    const-string v3, "BACK"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fork/enums/VideoVoiceCamera;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/VideoVoiceCamera;->BACK:Lorg/fork/enums/VideoVoiceCamera;

    .line 9
    new-instance v0, Lorg/fork/enums/VideoVoiceCamera;

    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_video_voice_ask_camera:I

    sget v2, Lorg/telegram/messenger/R$string;->settings_interface_video_voice_ask_camera_short:I

    const-string v3, "ASK"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fork/enums/VideoVoiceCamera;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/VideoVoiceCamera;->ASK:Lorg/fork/enums/VideoVoiceCamera;

    invoke-static {}, Lorg/fork/enums/VideoVoiceCamera;->$values()[Lorg/fork/enums/VideoVoiceCamera;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/VideoVoiceCamera;->$VALUES:[Lorg/fork/enums/VideoVoiceCamera;

    new-instance v0, Lorg/fork/enums/VideoVoiceCamera$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/VideoVoiceCamera$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/VideoVoiceCamera;->Companion:Lorg/fork/enums/VideoVoiceCamera$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/fork/enums/VideoVoiceCamera;->textResId:I

    iput p4, p0, Lorg/fork/enums/VideoVoiceCamera;->shortTextResId:I

    return-void
.end method

.method public static final mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/VideoVoiceCamera;
    .locals 1

    sget-object v0, Lorg/fork/enums/VideoVoiceCamera;->Companion:Lorg/fork/enums/VideoVoiceCamera$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/VideoVoiceCamera$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/VideoVoiceCamera;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/VideoVoiceCamera;
    .locals 1

    const-class v0, Lorg/fork/enums/VideoVoiceCamera;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/VideoVoiceCamera;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/VideoVoiceCamera;
    .locals 1

    sget-object v0, Lorg/fork/enums/VideoVoiceCamera;->$VALUES:[Lorg/fork/enums/VideoVoiceCamera;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/VideoVoiceCamera;

    return-object v0
.end method


# virtual methods
.method public final getShortTextResId()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/fork/enums/VideoVoiceCamera;->shortTextResId:I

    return v0
.end method

.method public final getTextResId()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/fork/enums/VideoVoiceCamera;->textResId:I

    return v0
.end method
