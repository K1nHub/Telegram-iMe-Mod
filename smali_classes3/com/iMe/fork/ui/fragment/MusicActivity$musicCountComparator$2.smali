.class final Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MusicActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/fragment/MusicActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Comparator<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;


# direct methods
.method public static synthetic $r8$lambda$BFiU_ybIIvgGFnt3oqFRLLUapVY(Lcom/iMe/fork/ui/fragment/MusicActivity;JJ)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2;->invoke$lambda$0(Lcom/iMe/fork/ui/fragment/MusicActivity;JJ)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/iMe/fork/ui/fragment/MusicActivity;JJ)I
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->access$getCountsMap$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->access$getCountsMap$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Landroid/util/LongSparseArray;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "countsMap[did2]"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2;->invoke()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    new-instance v1, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    return-object v1
.end method
