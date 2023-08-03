.class public final synthetic Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/PaintView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->$r8$lambda$CcGOJQPuR6vchGobJ3nUx5krEmo(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method
