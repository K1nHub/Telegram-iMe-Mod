.class public final synthetic Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/models/backup/Backup;

.field public final synthetic f$1:Lcom/iMe/fork/controller/TemplatesController;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/models/backup/Backup;Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda14;->f$0:Lcom/iMe/fork/models/backup/Backup;

    iput-object p2, p0, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda14;->f$1:Lcom/iMe/fork/controller/TemplatesController;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda14;->f$0:Lcom/iMe/fork/models/backup/Backup;

    iget-object v1, p0, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda14;->f$1:Lcom/iMe/fork/controller/TemplatesController;

    invoke-static {v0, v1, p1, p2}, Lcom/iMe/fork/controller/TemplatesController;->$r8$lambda$momIJHj668F1Bh2nUBkGvewIToA(Lcom/iMe/fork/models/backup/Backup;Lcom/iMe/fork/controller/TemplatesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
