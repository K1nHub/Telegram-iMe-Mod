.class public final synthetic Lorg/fork/controller/FiltersController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/controller/FiltersController;

.field public final synthetic f$1:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/controller/FiltersController;Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/FiltersController$$ExternalSyntheticLambda0;->f$0:Lorg/fork/controller/FiltersController;

    iput-object p2, p0, Lorg/fork/controller/FiltersController$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/fork/controller/FiltersController$$ExternalSyntheticLambda0;->f$0:Lorg/fork/controller/FiltersController;

    iget-object v1, p0, Lorg/fork/controller/FiltersController$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    invoke-static {v0, v1}, Lorg/fork/controller/FiltersController;->$r8$lambda$TeQY_wNic7Lq1r82UEI8I12-aoM(Lorg/fork/controller/FiltersController;Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;)V

    return-void
.end method
