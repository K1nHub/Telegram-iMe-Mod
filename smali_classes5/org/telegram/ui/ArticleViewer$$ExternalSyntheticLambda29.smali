.class public final synthetic Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ArticleViewer;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda29;->f$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda29;->f$1:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda29;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda29;->f$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda29;->f$1:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda29;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->$r8$lambda$PVB9M24_p8apLwjyJM2qVmlLzhU(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;I)V

    return-void
.end method
