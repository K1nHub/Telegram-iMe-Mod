.class public final synthetic Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/SecretMediaViewer;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Runnable;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/SecretMediaViewer;

    iput-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/SecretMediaViewer;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/SecretMediaViewer;->$r8$lambda$sp3ohXl8I7Xz1EGkz7UtmdwSphc(Lorg/telegram/ui/SecretMediaViewer;Ljava/lang/Runnable;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method
