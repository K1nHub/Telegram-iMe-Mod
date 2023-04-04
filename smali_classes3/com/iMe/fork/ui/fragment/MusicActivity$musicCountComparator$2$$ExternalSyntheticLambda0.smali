.class public final synthetic Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/ui/fragment/MusicActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {v0, v1, v2, p1, p2}, Lcom/iMe/fork/ui/fragment/MusicActivity$musicCountComparator$2;->$r8$lambda$BFiU_ybIIvgGFnt3oqFRLLUapVY(Lcom/iMe/fork/ui/fragment/MusicActivity;JJ)I

    move-result p1

    return p1
.end method
