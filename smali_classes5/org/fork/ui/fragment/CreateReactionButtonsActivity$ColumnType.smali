.class public final enum Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;
.super Ljava/lang/Enum;
.source "CreateReactionButtonsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/CreateReactionButtonsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColumnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

.field public static final enum BUTTON:Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

.field public static final enum EMOJI:Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;


# direct methods
.method private static final synthetic $values()[Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    sget-object v1, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->EMOJI:Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->BUTTON:Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 424
    new-instance v0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    const-string v1, "EMOJI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->EMOJI:Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    new-instance v0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    const-string v1, "BUTTON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->BUTTON:Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    invoke-static {}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->$values()[Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    move-result-object v0

    sput-object v0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->$VALUES:[Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;
    .locals 1

    const-class v0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    return-object p0
.end method

.method public static values()[Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;
    .locals 1

    sget-object v0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->$VALUES:[Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    return-object v0
.end method
