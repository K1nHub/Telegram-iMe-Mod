.class public final enum Lcom/iMe/utils/formatter/DateFormatter$DateType;
.super Ljava/lang/Enum;
.source "DateFormatter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/utils/formatter/DateFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/utils/formatter/DateFormatter$DateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/utils/formatter/DateFormatter$DateType;

.field public static final enum DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

.field public static final enum ISO:Lcom/iMe/utils/formatter/DateFormatter$DateType;

.field public static final enum ONLY_DATE:Lcom/iMe/utils/formatter/DateFormatter$DateType;

.field public static final enum ONLY_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;


# instance fields
.field private final format:Ljava/lang/String;

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/utils/formatter/DateFormatter$DateType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/utils/formatter/DateFormatter$DateType;

    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ISO:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_DATE:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 41
    new-instance v0, Lcom/iMe/utils/formatter/DateFormatter$DateType;

    const-string v1, "UTC"

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    const-string v2, "getTimeZone(\"UTC\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ISO"

    const/4 v3, 0x0

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/iMe/utils/formatter/DateFormatter$DateType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/TimeZone;)V

    sput-object v0, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ISO:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    .line 42
    new-instance v0, Lcom/iMe/utils/formatter/DateFormatter$DateType;

    const-string v6, "ONLY_TIME"

    const/4 v7, 0x1

    const-string v8, "HH:mm"

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/iMe/utils/formatter/DateFormatter$DateType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/TimeZone;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    .line 43
    new-instance v0, Lcom/iMe/utils/formatter/DateFormatter$DateType;

    const-string v13, "ONLY_DATE"

    const/4 v14, 0x2

    const-string v15, "dd MMM yyyy"

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcom/iMe/utils/formatter/DateFormatter$DateType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/TimeZone;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_DATE:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    .line 44
    new-instance v0, Lcom/iMe/utils/formatter/DateFormatter$DateType;

    const-string v2, "DATE_AND_TIME"

    const/4 v3, 0x3

    const-string v4, "dd MMM yyyy HH:mm"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/iMe/utils/formatter/DateFormatter$DateType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/TimeZone;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {}, Lcom/iMe/utils/formatter/DateFormatter$DateType;->$values()[Lcom/iMe/utils/formatter/DateFormatter$DateType;

    move-result-object v0

    sput-object v0, Lcom/iMe/utils/formatter/DateFormatter$DateType;->$VALUES:[Lcom/iMe/utils/formatter/DateFormatter$DateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/TimeZone;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iMe/utils/formatter/DateFormatter$DateType;->format:Ljava/lang/String;

    iput-object p4, p0, Lcom/iMe/utils/formatter/DateFormatter$DateType;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/TimeZone;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 40
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p4

    const-string p5, "getDefault()"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/utils/formatter/DateFormatter$DateType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/TimeZone;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/utils/formatter/DateFormatter$DateType;
    .locals 1

    const-class v0, Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/utils/formatter/DateFormatter$DateType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/utils/formatter/DateFormatter$DateType;
    .locals 1

    sget-object v0, Lcom/iMe/utils/formatter/DateFormatter$DateType;->$VALUES:[Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/utils/formatter/DateFormatter$DateType;

    return-object v0
.end method


# virtual methods
.method public final getFormat()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/utils/formatter/DateFormatter$DateType;->format:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/utils/formatter/DateFormatter$DateType;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method
