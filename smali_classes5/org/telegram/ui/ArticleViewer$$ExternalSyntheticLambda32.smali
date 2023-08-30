.class public final synthetic Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ArticleViewer;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$WebPage;

.field public final synthetic f$3:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;->f$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;->f$2:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object p4, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;->f$3:Lorg/telegram/messenger/MessageObject;

    iput p5, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;->f$4:I

    iput-object p6, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;->f$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;->f$2:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;->f$3:Lorg/telegram/messenger/MessageObject;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;->f$4:I

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->$r8$lambda$PZBxK5iqPUiHG3SaYblzXtyW0f4(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ILjava/lang/String;)V

    return-void
.end method
