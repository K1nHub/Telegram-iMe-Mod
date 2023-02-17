.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZIZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$1:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$2:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$3:Z

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$4:I

    iput-boolean p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$5:Z

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$6:Z

    iput p8, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$7:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$1:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$2:Z

    iget-boolean v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$3:Z

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$4:I

    iget-boolean v5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$5:Z

    iget-boolean v6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$6:Z

    iget v7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda166;->f$7:I

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$DoDae0ZT9x_gEdrHTyUWZaaYZE0(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;ZZIZZI)V

    return-void
.end method
