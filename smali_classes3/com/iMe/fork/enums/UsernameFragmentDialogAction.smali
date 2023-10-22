.class public final enum Lcom/iMe/fork/enums/UsernameFragmentDialogAction;
.super Ljava/lang/Enum;
.source "UsernameFragmentDialogAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/UsernameFragmentDialogAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

.field public static final enum BUY:Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

.field public static final Companion:Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;

.field public static final enum LINK:Lcom/iMe/fork/enums/UsernameFragmentDialogAction;


# instance fields
.field private final actionText:Ljava/lang/String;

.field private final iconResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/UsernameFragmentDialogAction;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    sget-object v1, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->LINK:Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->BUY:Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    .line 12
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    .line 13
    sget v2, Lorg/telegram/messenger/R$string;->fragment_usernames_link:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(R.stri\u2026.fragment_usernames_link)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "LINK"

    const/4 v4, 0x0

    .line 11
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->LINK:Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    .line 15
    new-instance v0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    .line 16
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_donations_24:I

    .line 17
    sget v2, Lorg/telegram/messenger/R$string;->fragment_usernames_buy:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(R.string.fragment_usernames_buy)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "BUY"

    const/4 v4, 0x1

    .line 15
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->BUY:Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    invoke-static {}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->$values()[Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->$VALUES:[Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    new-instance v0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->Companion:Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;

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
    iput p3, p0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->iconResId:I

    .line 9
    iput-object p4, p0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->actionText:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getActionText$p(Lcom/iMe/fork/enums/UsernameFragmentDialogAction;)Ljava/lang/String;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->actionText:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getIconResId$p(Lcom/iMe/fork/enums/UsernameFragmentDialogAction;)I
    .locals 0

    .line 7
    iget p0, p0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->iconResId:I

    return p0
.end method

.method public static final getActions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->Companion:Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;

    invoke-virtual {v0}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;->getActions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getIcons()[I
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->Companion:Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;

    invoke-virtual {v0}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;->getIcons()[I

    move-result-object v0

    return-object v0
.end method

.method public static final mapByOrdinal(I)Lcom/iMe/fork/enums/UsernameFragmentDialogAction;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->Companion:Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;->mapByOrdinal(I)Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/UsernameFragmentDialogAction;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/UsernameFragmentDialogAction;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->$VALUES:[Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    return-object v0
.end method
