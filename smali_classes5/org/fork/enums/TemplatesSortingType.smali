.class public final enum Lorg/fork/enums/TemplatesSortingType;
.super Ljava/lang/Enum;
.source "TemplatesSortingType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/TemplatesSortingType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/TemplatesSortingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/TemplatesSortingType;

.field public static final Companion:Lorg/fork/enums/TemplatesSortingType$Companion;

.field public static final enum DATE:Lorg/fork/enums/TemplatesSortingType;

.field public static final enum NAME:Lorg/fork/enums/TemplatesSortingType;

.field public static final enum USAGE:Lorg/fork/enums/TemplatesSortingType;


# instance fields
.field private final iconResId:I

.field private final nameResId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/TemplatesSortingType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/fork/enums/TemplatesSortingType;

    sget-object v1, Lorg/fork/enums/TemplatesSortingType;->DATE:Lorg/fork/enums/TemplatesSortingType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/TemplatesSortingType;->NAME:Lorg/fork/enums/TemplatesSortingType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/TemplatesSortingType;->USAGE:Lorg/fork/enums/TemplatesSortingType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lorg/fork/enums/TemplatesSortingType;

    sget v1, Lorg/telegram/messenger/R$string;->dialogs_albums_sort_date:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_contacts_time:I

    const-string v3, "DATE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fork/enums/TemplatesSortingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/TemplatesSortingType;->DATE:Lorg/fork/enums/TemplatesSortingType;

    .line 9
    new-instance v0, Lorg/fork/enums/TemplatesSortingType;

    sget v1, Lorg/telegram/messenger/R$string;->dialogs_albums_sort_alphabetically:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_contacts_name:I

    const-string v3, "NAME"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fork/enums/TemplatesSortingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/TemplatesSortingType;->NAME:Lorg/fork/enums/TemplatesSortingType;

    .line 10
    new-instance v0, Lorg/fork/enums/TemplatesSortingType;

    sget v1, Lorg/telegram/messenger/R$string;->sort_by_usage:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_templates_sort_usage_rating:I

    const-string v3, "USAGE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/fork/enums/TemplatesSortingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/TemplatesSortingType;->USAGE:Lorg/fork/enums/TemplatesSortingType;

    invoke-static {}, Lorg/fork/enums/TemplatesSortingType;->$values()[Lorg/fork/enums/TemplatesSortingType;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/TemplatesSortingType;->$VALUES:[Lorg/fork/enums/TemplatesSortingType;

    new-instance v0, Lorg/fork/enums/TemplatesSortingType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/TemplatesSortingType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/TemplatesSortingType;->Companion:Lorg/fork/enums/TemplatesSortingType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/fork/enums/TemplatesSortingType;->nameResId:I

    iput p4, p0, Lorg/fork/enums/TemplatesSortingType;->iconResId:I

    return-void
.end method

.method public static final mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/TemplatesSortingType;
    .locals 1

    sget-object v0, Lorg/fork/enums/TemplatesSortingType;->Companion:Lorg/fork/enums/TemplatesSortingType$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/TemplatesSortingType$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/TemplatesSortingType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/TemplatesSortingType;
    .locals 1

    const-class v0, Lorg/fork/enums/TemplatesSortingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/TemplatesSortingType;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/TemplatesSortingType;
    .locals 1

    sget-object v0, Lorg/fork/enums/TemplatesSortingType;->$VALUES:[Lorg/fork/enums/TemplatesSortingType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/TemplatesSortingType;

    return-object v0
.end method


# virtual methods
.method public final getIconResId()I
    .locals 1

    .line 7
    iget v0, p0, Lorg/fork/enums/TemplatesSortingType;->iconResId:I

    return v0
.end method

.method public final getNameResId()I
    .locals 1

    .line 7
    iget v0, p0, Lorg/fork/enums/TemplatesSortingType;->nameResId:I

    return v0
.end method
