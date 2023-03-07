.class public final enum Lcom/smedialink/model/reaction/ReactionButtonsRowsType;
.super Ljava/lang/Enum;
.source "ReactionButtonsRowsType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/model/reaction/ReactionButtonsRowsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

.field public static final enum SINGLE:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

.field public static final enum THREE:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

.field public static final enum TWO:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;


# instance fields
.field private final resource:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/model/reaction/ReactionButtonsRowsType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    sget-object v1, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->SINGLE:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->TWO:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->THREE:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_one_line:I

    const-string v2, "SINGLE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->SINGLE:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    .line 8
    new-instance v0, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_two_lines:I

    const-string v2, "TWO"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->TWO:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    .line 9
    new-instance v0, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    sget v1, Lorg/telegram/messenger/R$string;->chat_reaction_three_lines:I

    const-string v2, "THREE"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->THREE:Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    invoke-static {}, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->$values()[Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    move-result-object v0

    sput-object v0, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->$VALUES:[Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

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

    iput p3, p0, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->resource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/model/reaction/ReactionButtonsRowsType;
    .locals 1

    const-class v0, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/model/reaction/ReactionButtonsRowsType;
    .locals 1

    sget-object v0, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->$VALUES:[Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/model/reaction/ReactionButtonsRowsType;

    return-object v0
.end method


# virtual methods
.method public final getResource()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/smedialink/model/reaction/ReactionButtonsRowsType;->resource:I

    return v0
.end method
