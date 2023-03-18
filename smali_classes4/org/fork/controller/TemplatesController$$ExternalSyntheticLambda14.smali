.class public final synthetic Lorg/fork/controller/TemplatesController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/fork/models/backup/Backup;

.field public final synthetic f$1:Lorg/fork/controller/TemplatesController;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/models/backup/Backup;Lorg/fork/controller/TemplatesController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/TemplatesController$$ExternalSyntheticLambda14;->f$0:Lorg/fork/models/backup/Backup;

    iput-object p2, p0, Lorg/fork/controller/TemplatesController$$ExternalSyntheticLambda14;->f$1:Lorg/fork/controller/TemplatesController;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/fork/controller/TemplatesController$$ExternalSyntheticLambda14;->f$0:Lorg/fork/models/backup/Backup;

    iget-object v1, p0, Lorg/fork/controller/TemplatesController$$ExternalSyntheticLambda14;->f$1:Lorg/fork/controller/TemplatesController;

    invoke-static {v0, v1, p1, p2}, Lorg/fork/controller/TemplatesController;->$r8$lambda$eKaIVtDHyVedMaTwM23tjKFihWk(Lorg/fork/models/backup/Backup;Lorg/fork/controller/TemplatesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
