.class public final enum Lorg/fork/enums/TranslationDialogType;
.super Ljava/lang/Enum;
.source "TranslationDialogType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/TranslationDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/TranslationDialogType;

.field public static final enum INCOMING:Lorg/fork/enums/TranslationDialogType;

.field public static final enum OUTGOING:Lorg/fork/enums/TranslationDialogType;

.field public static final enum REPLY:Lorg/fork/enums/TranslationDialogType;


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/TranslationDialogType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/fork/enums/TranslationDialogType;

    sget-object v1, Lorg/fork/enums/TranslationDialogType;->INCOMING:Lorg/fork/enums/TranslationDialogType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/TranslationDialogType;->OUTGOING:Lorg/fork/enums/TranslationDialogType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/TranslationDialogType;->REPLY:Lorg/fork/enums/TranslationDialogType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lorg/fork/enums/TranslationDialogType;

    const-string v1, "INCOMING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fork/enums/TranslationDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/enums/TranslationDialogType;->INCOMING:Lorg/fork/enums/TranslationDialogType;

    .line 5
    new-instance v0, Lorg/fork/enums/TranslationDialogType;

    const-string v1, "OUTGOING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/fork/enums/TranslationDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/enums/TranslationDialogType;->OUTGOING:Lorg/fork/enums/TranslationDialogType;

    .line 6
    new-instance v0, Lorg/fork/enums/TranslationDialogType;

    const-string v1, "REPLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/fork/enums/TranslationDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/enums/TranslationDialogType;->REPLY:Lorg/fork/enums/TranslationDialogType;

    invoke-static {}, Lorg/fork/enums/TranslationDialogType;->$values()[Lorg/fork/enums/TranslationDialogType;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/TranslationDialogType;->$VALUES:[Lorg/fork/enums/TranslationDialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/TranslationDialogType;
    .locals 1

    const-class v0, Lorg/fork/enums/TranslationDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/TranslationDialogType;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/TranslationDialogType;
    .locals 1

    sget-object v0, Lorg/fork/enums/TranslationDialogType;->$VALUES:[Lorg/fork/enums/TranslationDialogType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/TranslationDialogType;

    return-object v0
.end method
