.class public final synthetic Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/io/File;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda0;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p3, p0, Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    iput-boolean p5, p0, Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda0;->f$0:Landroid/net/Uri;

    iget-object v1, p0, Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p0, Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda0;->f$3:Ljava/io/File;

    iget-boolean v4, p0, Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda0;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/fork/utils/FileSavingHelper;->$r8$lambda$XOAhGevqmvuTf_9nR_zg7SwCj18(Landroid/net/Uri;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/io/File;Z)V

    return-void
.end method
