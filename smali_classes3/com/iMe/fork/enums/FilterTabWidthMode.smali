.class public final enum Lcom/iMe/fork/enums/FilterTabWidthMode;
.super Ljava/lang/Enum;
.source "FilterTabWidthMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/FilterTabWidthMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/FilterTabWidthMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/FilterTabWidthMode;

.field public static final Companion:Lcom/iMe/fork/enums/FilterTabWidthMode$Companion;

.field public static final enum DEFAULT:Lcom/iMe/fork/enums/FilterTabWidthMode;

.field public static final enum MEDIUM:Lcom/iMe/fork/enums/FilterTabWidthMode;

.field public static final enum MINIMUM:Lcom/iMe/fork/enums/FilterTabWidthMode;


# instance fields
.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/FilterTabWidthMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/fork/enums/FilterTabWidthMode;

    sget-object v1, Lcom/iMe/fork/enums/FilterTabWidthMode;->DEFAULT:Lcom/iMe/fork/enums/FilterTabWidthMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/FilterTabWidthMode;->MEDIUM:Lcom/iMe/fork/enums/FilterTabWidthMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/FilterTabWidthMode;->MINIMUM:Lcom/iMe/fork/enums/FilterTabWidthMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/iMe/fork/enums/FilterTabWidthMode;

    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_width_mode_value_default:I

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/FilterTabWidthMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/FilterTabWidthMode;->DEFAULT:Lcom/iMe/fork/enums/FilterTabWidthMode;

    .line 7
    new-instance v0, Lcom/iMe/fork/enums/FilterTabWidthMode;

    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_width_mode_value_medium:I

    const-string v2, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/FilterTabWidthMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/FilterTabWidthMode;->MEDIUM:Lcom/iMe/fork/enums/FilterTabWidthMode;

    .line 8
    new-instance v0, Lcom/iMe/fork/enums/FilterTabWidthMode;

    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_width_mode_value_minimum:I

    const-string v2, "MINIMUM"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/FilterTabWidthMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/FilterTabWidthMode;->MINIMUM:Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-static {}, Lcom/iMe/fork/enums/FilterTabWidthMode;->$values()[Lcom/iMe/fork/enums/FilterTabWidthMode;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/FilterTabWidthMode;->$VALUES:[Lcom/iMe/fork/enums/FilterTabWidthMode;

    new-instance v0, Lcom/iMe/fork/enums/FilterTabWidthMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/FilterTabWidthMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/FilterTabWidthMode;->Companion:Lcom/iMe/fork/enums/FilterTabWidthMode$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iMe/fork/enums/FilterTabWidthMode;->titleResId:I

    return-void
.end method

.method public static final mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/FilterTabWidthMode;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/FilterTabWidthMode;->Companion:Lcom/iMe/fork/enums/FilterTabWidthMode$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/FilterTabWidthMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/FilterTabWidthMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/FilterTabWidthMode;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/FilterTabWidthMode;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/FilterTabWidthMode;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/FilterTabWidthMode;->$VALUES:[Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/FilterTabWidthMode;

    return-object v0
.end method


# virtual methods
.method public final getTitleResId()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/iMe/fork/enums/FilterTabWidthMode;->titleResId:I

    return v0
.end method
