.class public final synthetic Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ArticleViewer;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$WebPage;

.field public final synthetic f$2:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;->f$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;->f$1:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;->f$2:Lorg/telegram/messenger/MessageObject;

    iput p4, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;->f$3:I

    iput-object p5, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;->f$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;->f$1:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;->f$2:Lorg/telegram/messenger/MessageObject;

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;->f$3:I

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;->f$4:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->$r8$lambda$ik80wgmys33xUxngsT2tn8f-MKo(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
