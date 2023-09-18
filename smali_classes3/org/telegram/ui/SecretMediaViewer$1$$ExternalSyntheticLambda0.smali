.class public final synthetic Lorg/telegram/ui/SecretMediaViewer$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/SecretMediaViewer$1;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/SecretMediaViewer$1;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/SecretMediaViewer$1;

    iput-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$1$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/SecretMediaViewer$1;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$1$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Lorg/telegram/ui/SecretMediaViewer$1;->$r8$lambda$a3Yup-aB_iy2zUAAFGpYqYVkUik(Lorg/telegram/ui/SecretMediaViewer$1;Ljava/io/File;)V

    return-void
.end method
