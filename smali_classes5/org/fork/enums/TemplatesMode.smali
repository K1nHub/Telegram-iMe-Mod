.class public final enum Lorg/fork/enums/TemplatesMode;
.super Ljava/lang/Enum;
.source "TemplatesMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/TemplatesMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/TemplatesMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/TemplatesMode;

.field public static final enum ATTACH:Lorg/fork/enums/TemplatesMode;

.field public static final Companion:Lorg/fork/enums/TemplatesMode$Companion;

.field public static final enum OFF:Lorg/fork/enums/TemplatesMode;

.field public static final enum OVAL:Lorg/fork/enums/TemplatesMode;


# instance fields
.field private final textResId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/TemplatesMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/fork/enums/TemplatesMode;

    sget-object v1, Lorg/fork/enums/TemplatesMode;->OVAL:Lorg/fork/enums/TemplatesMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/TemplatesMode;->ATTACH:Lorg/fork/enums/TemplatesMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/TemplatesMode;->OFF:Lorg/fork/enums/TemplatesMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lorg/fork/enums/TemplatesMode;

    sget v1, Lorg/telegram/messenger/R$string;->chat_templates_mode_oval:I

    const-string v2, "OVAL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/TemplatesMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/TemplatesMode;->OVAL:Lorg/fork/enums/TemplatesMode;

    .line 8
    new-instance v0, Lorg/fork/enums/TemplatesMode;

    sget v1, Lorg/telegram/messenger/R$string;->chat_templates_mode_attach:I

    const-string v2, "ATTACH"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/TemplatesMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/TemplatesMode;->ATTACH:Lorg/fork/enums/TemplatesMode;

    .line 9
    new-instance v0, Lorg/fork/enums/TemplatesMode;

    sget v1, Lorg/telegram/messenger/R$string;->common_off:I

    const-string v2, "OFF"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/TemplatesMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/TemplatesMode;->OFF:Lorg/fork/enums/TemplatesMode;

    invoke-static {}, Lorg/fork/enums/TemplatesMode;->$values()[Lorg/fork/enums/TemplatesMode;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/TemplatesMode;->$VALUES:[Lorg/fork/enums/TemplatesMode;

    new-instance v0, Lorg/fork/enums/TemplatesMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/TemplatesMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/TemplatesMode;->Companion:Lorg/fork/enums/TemplatesMode$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/fork/enums/TemplatesMode;->textResId:I

    return-void
.end method

.method public static final mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/TemplatesMode;
    .locals 1

    sget-object v0, Lorg/fork/enums/TemplatesMode;->Companion:Lorg/fork/enums/TemplatesMode$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/TemplatesMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/TemplatesMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/TemplatesMode;
    .locals 1

    const-class v0, Lorg/fork/enums/TemplatesMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/TemplatesMode;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/TemplatesMode;
    .locals 1

    sget-object v0, Lorg/fork/enums/TemplatesMode;->$VALUES:[Lorg/fork/enums/TemplatesMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/TemplatesMode;

    return-object v0
.end method


# virtual methods
.method public final getTextResId()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/fork/enums/TemplatesMode;->textResId:I

    return v0
.end method
