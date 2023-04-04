.class public final enum Lcom/iMe/fork/enums/AutoLockTime;
.super Ljava/lang/Enum;
.source "AutoLockTime.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/AutoLockTime$Companion;,
        Lcom/iMe/fork/enums/AutoLockTime$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/AutoLockTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/AutoLockTime;

.field public static final Companion:Lcom/iMe/fork/enums/AutoLockTime$Companion;

.field public static final enum FIVE_HOURS:Lcom/iMe/fork/enums/AutoLockTime;

.field public static final enum FIVE_MINUTES:Lcom/iMe/fork/enums/AutoLockTime;

.field public static final enum HOUR:Lcom/iMe/fork/enums/AutoLockTime;

.field public static final enum MINUTE:Lcom/iMe/fork/enums/AutoLockTime;

.field public static final enum NONE:Lcom/iMe/fork/enums/AutoLockTime;


# instance fields
.field private final id:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/AutoLockTime;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iMe/fork/enums/AutoLockTime;

    sget-object v1, Lcom/iMe/fork/enums/AutoLockTime;->NONE:Lcom/iMe/fork/enums/AutoLockTime;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/AutoLockTime;->MINUTE:Lcom/iMe/fork/enums/AutoLockTime;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/AutoLockTime;->FIVE_MINUTES:Lcom/iMe/fork/enums/AutoLockTime;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/AutoLockTime;->HOUR:Lcom/iMe/fork/enums/AutoLockTime;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/AutoLockTime;->FIVE_HOURS:Lcom/iMe/fork/enums/AutoLockTime;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/iMe/fork/enums/AutoLockTime;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/iMe/fork/enums/AutoLockTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/AutoLockTime;->NONE:Lcom/iMe/fork/enums/AutoLockTime;

    .line 7
    new-instance v0, Lcom/iMe/fork/enums/AutoLockTime;

    const-string v1, "MINUTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/iMe/fork/enums/AutoLockTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/AutoLockTime;->MINUTE:Lcom/iMe/fork/enums/AutoLockTime;

    .line 8
    new-instance v0, Lcom/iMe/fork/enums/AutoLockTime;

    const-string v1, "FIVE_MINUTES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/iMe/fork/enums/AutoLockTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/AutoLockTime;->FIVE_MINUTES:Lcom/iMe/fork/enums/AutoLockTime;

    .line 9
    new-instance v0, Lcom/iMe/fork/enums/AutoLockTime;

    const-string v1, "HOUR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/iMe/fork/enums/AutoLockTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/AutoLockTime;->HOUR:Lcom/iMe/fork/enums/AutoLockTime;

    .line 10
    new-instance v0, Lcom/iMe/fork/enums/AutoLockTime;

    const-string v1, "FIVE_HOURS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/iMe/fork/enums/AutoLockTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/AutoLockTime;->FIVE_HOURS:Lcom/iMe/fork/enums/AutoLockTime;

    invoke-static {}, Lcom/iMe/fork/enums/AutoLockTime;->$values()[Lcom/iMe/fork/enums/AutoLockTime;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/AutoLockTime;->$VALUES:[Lcom/iMe/fork/enums/AutoLockTime;

    new-instance v0, Lcom/iMe/fork/enums/AutoLockTime$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/AutoLockTime$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/AutoLockTime;->Companion:Lcom/iMe/fork/enums/AutoLockTime$Companion;

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

    iput p3, p0, Lcom/iMe/fork/enums/AutoLockTime;->id:I

    return-void
.end method

.method public static final findById(I)Lcom/iMe/fork/enums/AutoLockTime;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/AutoLockTime;->Companion:Lcom/iMe/fork/enums/AutoLockTime$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/AutoLockTime$Companion;->findById(I)Lcom/iMe/fork/enums/AutoLockTime;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/AutoLockTime;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/AutoLockTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/AutoLockTime;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/AutoLockTime;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/AutoLockTime;->$VALUES:[Lcom/iMe/fork/enums/AutoLockTime;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/AutoLockTime;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/iMe/fork/enums/AutoLockTime;->id:I

    return v0
.end method

.method public final getTimeInSeconds()J
    .locals 6

    .line 12
    sget-object v0, Lcom/iMe/fork/enums/AutoLockTime$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const-wide/16 v4, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 16
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    goto :goto_0

    .line 15
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    goto :goto_0

    .line 14
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
