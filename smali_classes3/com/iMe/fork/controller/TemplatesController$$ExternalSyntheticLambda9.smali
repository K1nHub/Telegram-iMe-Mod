.class public final synthetic Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/controller/TemplatesController;

.field public final synthetic f$1:Lcom/iMe/storage/domain/model/templates/TemplateModel;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/controller/TemplatesController;Lcom/iMe/storage/domain/model/templates/TemplateModel;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda9;->f$0:Lcom/iMe/fork/controller/TemplatesController;

    iput-object p2, p0, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda9;->f$1:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    iput-wide p3, p0, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda9;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda9;->f$0:Lcom/iMe/fork/controller/TemplatesController;

    iget-object v1, p0, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda9;->f$1:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    iget-wide v2, p0, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda9;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/fork/controller/TemplatesController;->$r8$lambda$Z2fjSqA7aCVoUv9DiWkYSLHE4rE(Lcom/iMe/fork/controller/TemplatesController;Lcom/iMe/storage/domain/model/templates/TemplateModel;J)V

    return-void
.end method
