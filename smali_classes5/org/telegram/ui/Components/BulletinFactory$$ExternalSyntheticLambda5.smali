.class public final synthetic Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lorg/telegram/ui/Components/Bulletin;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(ZLorg/telegram/ui/Components/Bulletin;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;->f$0:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/Components/Bulletin;

    iput-wide p3, p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;->f$2:J

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/Components/Bulletin;

    iget-wide v2, p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;->f$2:J

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/BulletinFactory;->$r8$lambda$G9PPj6zexBxlbcRGG-9ZrBiwUQE(ZLorg/telegram/ui/Components/Bulletin;JLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method
