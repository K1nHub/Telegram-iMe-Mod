package com.iMe.storage.data.locale.p026db.model.topics;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TopicDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.topics.TopicDb */
/* loaded from: classes3.dex */
public final class TopicDb {
    private final List<Long> dialogs;
    private final String icon;
    private final boolean isHidden;
    private final String name;
    private final int order;
    private final List<Long> presets;
    private final long topicId;
    private final long userId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TopicDb) {
            TopicDb topicDb = (TopicDb) obj;
            return this.topicId == topicDb.topicId && Intrinsics.areEqual(this.name, topicDb.name) && Intrinsics.areEqual(this.icon, topicDb.icon) && this.order == topicDb.order && this.isHidden == topicDb.isHidden && Intrinsics.areEqual(this.presets, topicDb.presets) && Intrinsics.areEqual(this.dialogs, topicDb.dialogs) && this.userId == topicDb.userId;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m1017m = ProfileData$$ExternalSyntheticBackport0.m1017m(this.topicId) * 31;
        String str = this.name;
        int hashCode = (m1017m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.icon;
        int hashCode2 = (((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.order) * 31;
        boolean z = this.isHidden;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((((hashCode2 + i) * 31) + this.presets.hashCode()) * 31) + this.dialogs.hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1017m(this.userId);
    }

    public String toString() {
        return "TopicDb(topicId=" + this.topicId + ", name=" + this.name + ", icon=" + this.icon + ", order=" + this.order + ", isHidden=" + this.isHidden + ", presets=" + this.presets + ", dialogs=" + this.dialogs + ", userId=" + this.userId + ')';
    }

    public TopicDb(long j, String str, String str2, int i, boolean z, List<Long> presets, List<Long> dialogs, long j2) {
        Intrinsics.checkNotNullParameter(presets, "presets");
        Intrinsics.checkNotNullParameter(dialogs, "dialogs");
        this.topicId = j;
        this.name = str;
        this.icon = str2;
        this.order = i;
        this.isHidden = z;
        this.presets = presets;
        this.dialogs = dialogs;
        this.userId = j2;
    }

    public final long getTopicId() {
        return this.topicId;
    }

    public final String getName() {
        return this.name;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final int getOrder() {
        return this.order;
    }

    public final boolean isHidden() {
        return this.isHidden;
    }

    public final List<Long> getPresets() {
        return this.presets;
    }

    public final List<Long> getDialogs() {
        return this.dialogs;
    }

    public final long getUserId() {
        return this.userId;
    }
}
