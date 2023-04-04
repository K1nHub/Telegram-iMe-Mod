.class public final enum Lcom/iMe/fork/enums/ProfileTwitterAction;
.super Ljava/lang/Enum;
.source "ProfileTwitterAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/ProfileTwitterAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/ProfileTwitterAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/ProfileTwitterAction;

.field public static final Companion:Lcom/iMe/fork/enums/ProfileTwitterAction$Companion;

.field public static final enum OPEN:Lcom/iMe/fork/enums/ProfileTwitterAction;

.field public static final enum RESET:Lcom/iMe/fork/enums/ProfileTwitterAction;


# instance fields
.field private final actionText:Ljava/lang/String;

.field private final iconResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/ProfileTwitterAction;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/fork/enums/ProfileTwitterAction;

    sget-object v1, Lcom/iMe/fork/enums/ProfileTwitterAction;->OPEN:Lcom/iMe/fork/enums/ProfileTwitterAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ProfileTwitterAction;->RESET:Lcom/iMe/fork/enums/ProfileTwitterAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/iMe/fork/enums/ProfileTwitterAction;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_view_file:I

    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    const-string v3, "Open"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(\"Open\", R.string.Open)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "OPEN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/iMe/fork/enums/ProfileTwitterAction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iMe/fork/enums/ProfileTwitterAction;->OPEN:Lcom/iMe/fork/enums/ProfileTwitterAction;

    .line 12
    new-instance v0, Lcom/iMe/fork/enums/ProfileTwitterAction;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v2, Lorg/telegram/messenger/R$string;->Reset:I

    const-string v3, "Reset"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(\"Reset\", R.string.Reset)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "RESET"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/iMe/fork/enums/ProfileTwitterAction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iMe/fork/enums/ProfileTwitterAction;->RESET:Lcom/iMe/fork/enums/ProfileTwitterAction;

    invoke-static {}, Lcom/iMe/fork/enums/ProfileTwitterAction;->$values()[Lcom/iMe/fork/enums/ProfileTwitterAction;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/ProfileTwitterAction;->$VALUES:[Lcom/iMe/fork/enums/ProfileTwitterAction;

    new-instance v0, Lcom/iMe/fork/enums/ProfileTwitterAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/ProfileTwitterAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ProfileTwitterAction;->Companion:Lcom/iMe/fork/enums/ProfileTwitterAction$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/iMe/fork/enums/ProfileTwitterAction;->iconResId:I

    .line 9
    iput-object p4, p0, Lcom/iMe/fork/enums/ProfileTwitterAction;->actionText:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getActionText$p(Lcom/iMe/fork/enums/ProfileTwitterAction;)Ljava/lang/String;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/iMe/fork/enums/ProfileTwitterAction;->actionText:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getIconResId$p(Lcom/iMe/fork/enums/ProfileTwitterAction;)I
    .locals 0

    .line 7
    iget p0, p0, Lcom/iMe/fork/enums/ProfileTwitterAction;->iconResId:I

    return p0
.end method

.method public static final getActions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ProfileTwitterAction;->Companion:Lcom/iMe/fork/enums/ProfileTwitterAction$Companion;

    invoke-virtual {v0}, Lcom/iMe/fork/enums/ProfileTwitterAction$Companion;->getActions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getIcons()[I
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ProfileTwitterAction;->Companion:Lcom/iMe/fork/enums/ProfileTwitterAction$Companion;

    invoke-virtual {v0}, Lcom/iMe/fork/enums/ProfileTwitterAction$Companion;->getIcons()[I

    move-result-object v0

    return-object v0
.end method

.method public static final mapByOrdinal(I)Lcom/iMe/fork/enums/ProfileTwitterAction;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ProfileTwitterAction;->Companion:Lcom/iMe/fork/enums/ProfileTwitterAction$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/ProfileTwitterAction$Companion;->mapByOrdinal(I)Lcom/iMe/fork/enums/ProfileTwitterAction;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/ProfileTwitterAction;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/ProfileTwitterAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/ProfileTwitterAction;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/ProfileTwitterAction;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ProfileTwitterAction;->$VALUES:[Lcom/iMe/fork/enums/ProfileTwitterAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/ProfileTwitterAction;

    return-object v0
.end method
