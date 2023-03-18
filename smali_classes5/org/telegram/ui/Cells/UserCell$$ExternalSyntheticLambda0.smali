.class public final synthetic Lorg/telegram/ui/Cells/UserCell$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/BackupImageView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/BackupImageView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/BackupImageView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
