.class public final enum Lorg/fork/enums/ContactsActionType;
.super Ljava/lang/Enum;
.source "ContactsActionType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/ContactsActionType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/ContactsActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/ContactsActionType;

.field public static final Companion:Lorg/fork/enums/ContactsActionType$Companion;

.field public static final enum DELETE:Lorg/fork/enums/ContactsActionType;

.field public static final enum UNBLOCK:Lorg/fork/enums/ContactsActionType;

.field public static defaultValue:Lorg/fork/enums/ContactsActionType;


# instance fields
.field private final iconResId:I

.field private final textKey:Ljava/lang/String;

.field private final textResId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/ContactsActionType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fork/enums/ContactsActionType;

    sget-object v1, Lorg/fork/enums/ContactsActionType;->DELETE:Lorg/fork/enums/ContactsActionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/ContactsActionType;->UNBLOCK:Lorg/fork/enums/ContactsActionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 13
    new-instance v6, Lorg/fork/enums/ContactsActionType;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v5, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v1, "DELETE"

    const/4 v2, 0x0

    const-string v4, "Delete"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/fork/enums/ContactsActionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lorg/fork/enums/ContactsActionType;->DELETE:Lorg/fork/enums/ContactsActionType;

    .line 14
    new-instance v0, Lorg/fork/enums/ContactsActionType;

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_block:I

    sget v12, Lorg/telegram/messenger/R$string;->Unblock:I

    const-string v8, "UNBLOCK"

    const/4 v9, 0x1

    const-string v11, "Unblock"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/fork/enums/ContactsActionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lorg/fork/enums/ContactsActionType;->UNBLOCK:Lorg/fork/enums/ContactsActionType;

    invoke-static {}, Lorg/fork/enums/ContactsActionType;->$values()[Lorg/fork/enums/ContactsActionType;

    move-result-object v1

    sput-object v1, Lorg/fork/enums/ContactsActionType;->$VALUES:[Lorg/fork/enums/ContactsActionType;

    new-instance v1, Lorg/fork/enums/ContactsActionType$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/fork/enums/ContactsActionType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/fork/enums/ContactsActionType;->Companion:Lorg/fork/enums/ContactsActionType$Companion;

    .line 18
    sput-object v0, Lorg/fork/enums/ContactsActionType;->defaultValue:Lorg/fork/enums/ContactsActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lorg/fork/enums/ContactsActionType;->iconResId:I

    .line 10
    iput-object p4, p0, Lorg/fork/enums/ContactsActionType;->textKey:Ljava/lang/String;

    .line 11
    iput p5, p0, Lorg/fork/enums/ContactsActionType;->textResId:I

    return-void
.end method

.method public static final getByPosition(I)Lorg/fork/enums/ContactsActionType;
    .locals 1

    sget-object v0, Lorg/fork/enums/ContactsActionType;->Companion:Lorg/fork/enums/ContactsActionType$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/ContactsActionType$Companion;->getByPosition(I)Lorg/fork/enums/ContactsActionType;

    move-result-object p0

    return-object p0
.end method

.method public static final getIconsArray()[I
    .locals 1

    sget-object v0, Lorg/fork/enums/ContactsActionType;->Companion:Lorg/fork/enums/ContactsActionType$Companion;

    invoke-virtual {v0}, Lorg/fork/enums/ContactsActionType$Companion;->getIconsArray()[I

    move-result-object v0

    return-object v0
.end method

.method public static final getTextsArray()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/fork/enums/ContactsActionType;->Companion:Lorg/fork/enums/ContactsActionType$Companion;

    invoke-virtual {v0}, Lorg/fork/enums/ContactsActionType$Companion;->getTextsArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/ContactsActionType;
    .locals 1

    const-class v0, Lorg/fork/enums/ContactsActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/ContactsActionType;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/ContactsActionType;
    .locals 1

    sget-object v0, Lorg/fork/enums/ContactsActionType;->$VALUES:[Lorg/fork/enums/ContactsActionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/ContactsActionType;

    return-object v0
.end method


# virtual methods
.method public final getIconResId()I
    .locals 1

    .line 9
    iget v0, p0, Lorg/fork/enums/ContactsActionType;->iconResId:I

    return v0
.end method

.method public final getTextKey()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/fork/enums/ContactsActionType;->textKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextResId()I
    .locals 1

    .line 11
    iget v0, p0, Lorg/fork/enums/ContactsActionType;->textResId:I

    return v0
.end method
