.class public final Lcom/smedialink/storage/data/mapper/template/TemplateMappingKt;
.super Ljava/lang/Object;
.source "TemplateMapping.kt"


# direct methods
.method public static final mapToDb(Lcom/smedialink/storage/domain/model/templates/TemplateModel;J)Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->getMessageId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->getGroupId()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->getCreationDate()J

    move-result-wide v9

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->getUsageRating()I

    move-result v11

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->getSent()Z

    move-result v12

    move-object v1, v0

    move-wide v2, p1

    invoke-direct/range {v1 .. v12}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;-><init>(JJJLjava/lang/String;JIZ)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;)Lcom/smedialink/storage/domain/model/templates/TemplateModel;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getMessageId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getGroupId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getTemplateName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getCreationDate()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getUsageRating()I

    move-result v9

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->getSent()Z

    move-result v10

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/smedialink/storage/domain/model/templates/TemplateModel;-><init>(JJLjava/lang/String;JIZ)V

    return-object v0
.end method
