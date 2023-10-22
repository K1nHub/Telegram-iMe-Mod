.class public final Lcom/iMe/utils/formatter/MaskFormatter;
.super Ljava/lang/Object;
.source "MaskFormatter.kt"


# static fields
.field private static final HIDDEN_MASK:Ljava/lang/String;

.field public static final INSTANCE:Lcom/iMe/utils/formatter/MaskFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/utils/formatter/MaskFormatter;

    invoke-direct {v0}, Lcom/iMe/utils/formatter/MaskFormatter;-><init>()V

    sput-object v0, Lcom/iMe/utils/formatter/MaskFormatter;->INSTANCE:Lcom/iMe/utils/formatter/MaskFormatter;

    const-string v0, "*"

    const/4 v1, 0x4

    .line 7
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iMe/utils/formatter/MaskFormatter;->HIDDEN_MASK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatBalanceOrMask(ZLjava/lang/Number;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 16
    sget-object p0, Lcom/iMe/utils/formatter/MaskFormatter;->HIDDEN_MASK:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final textOrMask(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 20
    sget-object p2, Lcom/iMe/utils/formatter/MaskFormatter;->HIDDEN_MASK:Ljava/lang/String;

    :cond_0
    return-object p2
.end method
