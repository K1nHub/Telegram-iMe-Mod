.class public Lcom/smedialink/model/common/NavigationTab;
.super Ljava/lang/Object;
.source "NavigationTab.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/smedialink/ui/base/mvp/MvpFragment;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final fragment:Lcom/smedialink/ui/base/mvp/MvpFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final id:I


# direct methods
.method public constructor <init>(ILcom/smedialink/ui/base/mvp/MvpFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/smedialink/model/common/NavigationTab;->id:I

    .line 7
    iput-object p2, p0, Lcom/smedialink/model/common/NavigationTab;->fragment:Lcom/smedialink/ui/base/mvp/MvpFragment;

    return-void
.end method


# virtual methods
.method public getFragment()Lcom/smedialink/ui/base/mvp/MvpFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/smedialink/model/common/NavigationTab;->fragment:Lcom/smedialink/ui/base/mvp/MvpFragment;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/smedialink/model/common/NavigationTab;->id:I

    return v0
.end method
