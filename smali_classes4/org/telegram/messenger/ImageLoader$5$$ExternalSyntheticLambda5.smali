.class public final synthetic Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ImageLoader$5;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ImageLoader$5;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/ImageLoader$5;

    iput p2, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda5;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/ImageLoader$5;

    iget v1, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/ImageLoader$5$$ExternalSyntheticLambda5;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader$5;->$r8$lambda$ogoQdp65rBpAT65KKhk7wve2uSA(Lorg/telegram/messenger/ImageLoader$5;ILjava/lang/String;Z)V

    return-void
.end method
