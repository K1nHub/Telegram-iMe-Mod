.class public final synthetic Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$14;

.field public final synthetic f$1:Lorg/telegram/messenger/UserConfig;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Photo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$14;Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$Photo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/PhotoViewer$14;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/messenger/UserConfig;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda18;->f$2:Lorg/telegram/tgnet/TLRPC$Photo;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/PhotoViewer$14;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/messenger/UserConfig;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda18;->f$2:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/PhotoViewer$14;->$r8$lambda$iO5fi3EobZToWF2maOxG4qYH6yo(Lorg/telegram/ui/PhotoViewer$14;Lorg/telegram/messenger/UserConfig;Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
