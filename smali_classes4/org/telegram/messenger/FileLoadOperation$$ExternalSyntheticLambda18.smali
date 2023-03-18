.class public final synthetic Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FileLoadOperation;

.field public final synthetic f$1:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/messenger/FileLoadOperation;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;->f$2:Lorg/telegram/tgnet/TLObject;

    iput p4, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;->f$3:I

    iput p5, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;->f$4:I

    iput-boolean p6, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;->f$2:Lorg/telegram/tgnet/TLObject;

    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;->f$3:I

    iget v4, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;->f$4:I

    iget-boolean v5, p0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;->f$5:Z

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/FileLoadOperation;->$r8$lambda$oo7cdKZHtayW6eMIgp_L93Tw0MM(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;IIZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
