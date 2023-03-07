.class public final enum Lorg/fork/enums/PasscodeType;
.super Ljava/lang/Enum;
.source "PasscodeType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/PasscodeType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/PasscodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/PasscodeType;

.field public static final Companion:Lorg/fork/enums/PasscodeType$Companion;

.field public static final enum PASSWORD:Lorg/fork/enums/PasscodeType;

.field public static final enum PIN:Lorg/fork/enums/PasscodeType;


# instance fields
.field private final id:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/PasscodeType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fork/enums/PasscodeType;

    sget-object v1, Lorg/fork/enums/PasscodeType;->PIN:Lorg/fork/enums/PasscodeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/PasscodeType;->PASSWORD:Lorg/fork/enums/PasscodeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lorg/fork/enums/PasscodeType;

    const-string v1, "PIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/fork/enums/PasscodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/PasscodeType;->PIN:Lorg/fork/enums/PasscodeType;

    .line 5
    new-instance v0, Lorg/fork/enums/PasscodeType;

    const-string v1, "PASSWORD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/fork/enums/PasscodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/PasscodeType;->PASSWORD:Lorg/fork/enums/PasscodeType;

    invoke-static {}, Lorg/fork/enums/PasscodeType;->$values()[Lorg/fork/enums/PasscodeType;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/PasscodeType;->$VALUES:[Lorg/fork/enums/PasscodeType;

    new-instance v0, Lorg/fork/enums/PasscodeType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/PasscodeType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/PasscodeType;->Companion:Lorg/fork/enums/PasscodeType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/fork/enums/PasscodeType;->id:I

    return-void
.end method

.method public static final findById(I)Lorg/fork/enums/PasscodeType;
    .locals 1

    sget-object v0, Lorg/fork/enums/PasscodeType;->Companion:Lorg/fork/enums/PasscodeType$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/PasscodeType$Companion;->findById(I)Lorg/fork/enums/PasscodeType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/PasscodeType;
    .locals 1

    const-class v0, Lorg/fork/enums/PasscodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/PasscodeType;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/PasscodeType;
    .locals 1

    sget-object v0, Lorg/fork/enums/PasscodeType;->$VALUES:[Lorg/fork/enums/PasscodeType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/PasscodeType;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 3
    iget v0, p0, Lorg/fork/enums/PasscodeType;->id:I

    return v0
.end method
