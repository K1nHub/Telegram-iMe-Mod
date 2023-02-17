.class final Lorg/solovyev/android/checkout/PurchaseComparator;
.super Ljava/lang/Object;
.source "PurchaseComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/solovyev/android/checkout/Purchase;",
        ">;"
    }
.end annotation


# static fields
.field private static final EARLIEST_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private static final LATEST_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAsc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lorg/solovyev/android/checkout/PurchaseComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/solovyev/android/checkout/PurchaseComparator;-><init>(Z)V

    sput-object v0, Lorg/solovyev/android/checkout/PurchaseComparator;->EARLIEST_FIRST:Ljava/util/Comparator;

    .line 35
    new-instance v0, Lorg/solovyev/android/checkout/PurchaseComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/solovyev/android/checkout/PurchaseComparator;-><init>(Z)V

    sput-object v0, Lorg/solovyev/android/checkout/PurchaseComparator;->LATEST_FIRST:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 39
    :goto_0
    iput p1, p0, Lorg/solovyev/android/checkout/PurchaseComparator;->mAsc:I

    return-void
.end method

.method public static compare(JJ)I
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static earliestFirst()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lorg/solovyev/android/checkout/PurchaseComparator;->EARLIEST_FIRST:Ljava/util/Comparator;

    return-object v0
.end method

.method static latestFirst()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lorg/solovyev/android/checkout/PurchaseComparator;->LATEST_FIRST:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lorg/solovyev/android/checkout/Purchase;

    check-cast p2, Lorg/solovyev/android/checkout/Purchase;

    invoke-virtual {p0, p1, p2}, Lorg/solovyev/android/checkout/PurchaseComparator;->compare(Lorg/solovyev/android/checkout/Purchase;Lorg/solovyev/android/checkout/Purchase;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/solovyev/android/checkout/Purchase;Lorg/solovyev/android/checkout/Purchase;)I
    .locals 3

    .line 58
    iget v0, p0, Lorg/solovyev/android/checkout/PurchaseComparator;->mAsc:I

    iget-wide v1, p1, Lorg/solovyev/android/checkout/Purchase;->time:J

    iget-wide p1, p2, Lorg/solovyev/android/checkout/Purchase;->time:J

    invoke-static {v1, v2, p1, p2}, Lorg/solovyev/android/checkout/PurchaseComparator;->compare(JJ)I

    move-result p1

    mul-int v0, v0, p1

    return v0
.end method
