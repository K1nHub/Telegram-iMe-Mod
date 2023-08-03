package com.iMe.storage.domain.model.templates;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TemplateModel.kt */
/* loaded from: classes3.dex */
public final class TemplateModel {
    private final long creationDate;
    private final long groupId;
    private final long messageId;
    private final String name;
    private final boolean sent;
    private final int usageRating;

    public final long component1() {
        return this.messageId;
    }

    public final long component2() {
        return this.groupId;
    }

    public final String component3() {
        return this.name;
    }

    public final long component4() {
        return this.creationDate;
    }

    public final int component5() {
        return this.usageRating;
    }

    public final boolean component6() {
        return this.sent;
    }

    public final TemplateModel copy(long j, long j2, String name, long j3, int i, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new TemplateModel(j, j2, name, j3, i, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TemplateModel) {
            TemplateModel templateModel = (TemplateModel) obj;
            return this.messageId == templateModel.messageId && this.groupId == templateModel.groupId && Intrinsics.areEqual(this.name, templateModel.name) && this.creationDate == templateModel.creationDate && this.usageRating == templateModel.usageRating && this.sent == templateModel.sent;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m724m = ((((((((BotsDbModel$$ExternalSyntheticBackport0.m724m(this.messageId) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.groupId)) * 31) + this.name.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.creationDate)) * 31) + this.usageRating) * 31;
        boolean z = this.sent;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m724m + i;
    }

    public String toString() {
        return "TemplateModel(messageId=" + this.messageId + ", groupId=" + this.groupId + ", name=" + this.name + ", creationDate=" + this.creationDate + ", usageRating=" + this.usageRating + ", sent=" + this.sent + ')';
    }

    public TemplateModel(long j, long j2, String name, long j3, int i, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.messageId = j;
        this.groupId = j2;
        this.name = name;
        this.creationDate = j3;
        this.usageRating = i;
        this.sent = z;
    }

    public final long getMessageId() {
        return this.messageId;
    }

    public final long getGroupId() {
        return this.groupId;
    }

    public final String getName() {
        return this.name;
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
