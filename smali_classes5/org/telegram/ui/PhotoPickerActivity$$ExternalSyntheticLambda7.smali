.class public final synthetic Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoPickerActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/PhotoPickerActivity;

    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-boolean p3, p0, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda7;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda7;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-boolean v2, p0, Lorg/telegram/ui/PhotoPickerActivity$$ExternalSyntheticLambda7;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoPickerActivity;->$r8$lambda$G1bSEGSmBM0GDPgI0dRdeODWM8c(Lorg/telegram/ui/PhotoPickerActivity;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method
