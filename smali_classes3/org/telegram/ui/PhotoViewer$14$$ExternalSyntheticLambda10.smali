.class public final synthetic Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$14;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/messenger/UserConfig;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$Photo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$14;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$Photo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/PhotoViewer$14;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/messenger/UserConfig;

    iput-object p4, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda10;->f$3:Lorg/telegram/tgnet/TLRPC$Photo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/PhotoViewer$14;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/messenger/UserConfig;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda10;->f$3:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$14;->$r8$lambda$YjMgmDOVSY2ed1jR0CsaPyS2cpk(Lorg/telegram/ui/PhotoViewer$14;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$Photo;)V

    return-void
.end method
