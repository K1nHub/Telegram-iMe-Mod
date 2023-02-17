.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;Ljava/io/File;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10$$ExternalSyntheticLambda2;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;->$r8$lambda$PGlkiI7Dw8iyE52VL7PMk2NH09Y(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;Ljava/io/File;Z)V

    return-void
.end method
