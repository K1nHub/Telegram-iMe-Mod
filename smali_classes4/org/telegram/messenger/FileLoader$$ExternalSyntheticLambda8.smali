.class public final synthetic Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/FileLoader;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IILjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    iput p4, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$3:I

    iput p5, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$4:I

    iput-object p6, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$6:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/messenger/FileLoader;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$3:I

    iget v4, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$4:I

    iget-object v5, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;->f$6:Landroid/net/Uri;

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/FileLoader;->$r8$lambda$6rOpEcUx0nRO2i6t4c2Gk7D1owg(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
