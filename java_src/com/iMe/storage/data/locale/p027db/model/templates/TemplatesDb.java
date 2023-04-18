package com.iMe.storage.data.locale.p027db.model.templates;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TemplatesDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.templates.TemplatesDb */
/* loaded from: classes3.dex */
public final class TemplatesDb {
    private final long creationDate;
    private final long groupId;
    private final long messageId;
    private final boolean sent;
    private final String templateName;
    private final int usageRating;
    private final long userId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TemplatesDb) {
            TemplatesDb templatesDb = (TemplatesDb) obj;
            return this.userId == templatesDb.userId && this.messageId == templatesDb.messageId && this.groupId == templatesDb.groupId && Intrinsics.areEqual(this.templateName, templatesDb.templateName) && this.creationDate == templatesDb.creationDate && this.usageRating == templatesDb.usageRating && this.sent == templatesDb.sent;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m702m = ((((((((((BotsDbModel$$ExternalSyntheticBackport0.m702m(this.userId) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m702m(this.messageId)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m702m(this.groupId)) * 31) + this.templateName.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m702m(this.creationDate)) * 31) + this.usageRating) * 31;
        boolean z = this.sent;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m702m + i;
    }

    public String toString() {
        return "TemplatesDb(userId=" + this.userId + ", messageId=" + this.messageId + ", groupId=" + this.groupId + ", templateName=" + this.templateName + ", creationDate=" + this.creationDate + ", usageRating=" + this.usageRating + ", sent=" + this.sent + ')';
    }

    public TemplatesDb(long j, long j2, long j3, String templateName, long j4, int i, boolean z) {
        Intrinsics.checkNotNullParameter(templateName, "templateName");
        this.userId = j;
        this.messageId = j2;
        this.groupId = j3;
        this.templateName = templateName;
        this.creationDate = j4;
        this.usageRating = i;
        this.sent = z;
    }

    public final long getUserId() {
        return this.userId;
    }

    public final long getMessageId() {
        return this.messageId;
    }

    public final long getGroupId() {
        return this.groupId;
    }

    public final String getTemplateName() {
        return this.templateName;
    }

    public final long getCreationDate() {
        return this.creationDate;
    }

    public final int getUsageRating() {
        return this.usageRating;
    }

    public final boolean getSent() {
        return this.sent;
    }
}
