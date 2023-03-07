.class public final enum Lorg/fork/enums/StickersSize;
.super Ljava/lang/Enum;
.source "StickersSize.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/StickersSize$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/StickersSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/StickersSize;

.field public static final Companion:Lorg/fork/enums/StickersSize$Companion;

.field public static final enum LARGE:Lorg/fork/enums/StickersSize;

.field public static final enum MEDIUM:Lorg/fork/enums/StickersSize;

.field public static final enum SMALL:Lorg/fork/enums/StickersSize;


# instance fields
.field private final sizeRatio:D

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/StickersSize;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/fork/enums/StickersSize;

    sget-object v1, Lorg/fork/enums/StickersSize;->SMALL:Lorg/fork/enums/StickersSize;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/StickersSize;->MEDIUM:Lorg/fork/enums/StickersSize;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/StickersSize;->LARGE:Lorg/fork/enums/StickersSize;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 11
    new-instance v6, Lorg/fork/enums/StickersSize;

    sget v5, Lorg/telegram/messenger/R$string;->stickers_size_small:I

    const-string v1, "SMALL"

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/fork/enums/StickersSize;-><init>(Ljava/lang/String;IDI)V

    sput-object v6, Lorg/fork/enums/StickersSize;->SMALL:Lorg/fork/enums/StickersSize;

    .line 12
    new-instance v0, Lorg/fork/enums/StickersSize;

    sget v12, Lorg/telegram/messenger/R$string;->stickers_size_medium:I

    const-string v8, "MEDIUM"

    const/4 v9, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/fork/enums/StickersSize;-><init>(Ljava/lang/String;IDI)V

    sput-object v0, Lorg/fork/enums/StickersSize;->MEDIUM:Lorg/fork/enums/StickersSize;

    .line 13
    new-instance v0, Lorg/fork/enums/StickersSize;

    sget v6, Lorg/telegram/messenger/R$string;->stickers_size_large:I

    const-string v2, "LARGE"

    const/4 v3, 0x2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/fork/enums/StickersSize;-><init>(Ljava/lang/String;IDI)V

    sput-object v0, Lorg/fork/enums/StickersSize;->LARGE:Lorg/fork/enums/StickersSize;

    invoke-static {}, Lorg/fork/enums/StickersSize;->$values()[Lorg/fork/enums/StickersSize;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/StickersSize;->$VALUES:[Lorg/fork/enums/StickersSize;

    new-instance v0, Lorg/fork/enums/StickersSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/StickersSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/StickersSize;->Companion:Lorg/fork/enums/StickersSize$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-wide p3, p0, Lorg/fork/enums/StickersSize;->sizeRatio:D

    .line 9
    iput p5, p0, Lorg/fork/enums/StickersSize;->titleResId:I

    return-void
.end method

.method public static final getTitles()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/fork/enums/StickersSize;->Companion:Lorg/fork/enums/StickersSize$Companion;

    invoke-virtual {v0}, Lorg/fork/enums/StickersSize$Companion;->getTitles()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/StickersSize;
    .locals 1

    sget-object v0, Lorg/fork/enums/StickersSize;->Companion:Lorg/fork/enums/StickersSize$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/StickersSize$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/StickersSize;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/StickersSize;
    .locals 1

    const-class v0, Lorg/fork/enums/StickersSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/StickersSize;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/StickersSize;
    .locals 1

    sget-object v0, Lorg/fork/enums/StickersSize;->$VALUES:[Lorg/fork/enums/StickersSize;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/StickersSize;

    return-object v0
.end method


# virtual methods
.method public final getSizeRatio()D
    .locals 2

    .line 8
    iget-wide v0, p0, Lorg/fork/enums/StickersSize;->sizeRatio:D

    return-wide v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 9
    iget v0, p0, Lorg/fork/enums/StickersSize;->titleResId:I

    return v0
.end method
