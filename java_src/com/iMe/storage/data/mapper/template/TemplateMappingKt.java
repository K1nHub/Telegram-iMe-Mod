package com.iMe.storage.data.mapper.template;

import com.iMe.storage.data.locale.p027db.model.templates.TemplatesDb;
import com.iMe.storage.domain.model.templates.TemplateModel;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TemplateMapping.kt */
/* loaded from: classes4.dex */
public final class TemplateMappingKt {
    public static final TemplateModel mapToDomain(TemplatesDb templatesDb) {
        Intrinsics.checkNotNullParameter(templatesDb, "<this>");
        return new TemplateModel(templatesDb.getMessageId(), templatesDb.getGroupId(), templatesDb.getTemplateName(), templatesDb.getCreationDate(), templatesDb.getUsageRating(), templatesDb.getSent());
    }

    public static final TemplatesDb mapToDb(TemplateModel templateModel, long j) {
        Intrinsics.checkNotNullParameter(templateModel, "<this>");
        return new TemplatesDb(j, templateModel.getMessageId(), templateModel.getGroupId(), templateModel.getName(), templateModel.getCreationDate(), templateModel.getUsageRating(), templateModel.getSent());
    }
}
