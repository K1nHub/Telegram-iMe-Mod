package com.smedialink.storage.data.locale.p027db.model.topics;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TopicDb.kt */
/* renamed from: com.smedialink.storage.data.locale.db.model.topics.TopicDb */
/* loaded from: classes3.dex */
public final class TopicDb {
    private final List<Long> dialogs;
    private final String icon;
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
            return this.topicId == topicDb.topicId && Intrinsics.areEqual(this.name, topicDb.name) && Intrinsics.areEqual(this.icon, topicDb.icon) && this.order == topicDb.order && Intrinsics.areEqual(this.presets, topicDb.presets) && Intrinsics.areEqual(this.dialogs, topicDb.dialogs) && this.userId == topicDb.userId;
        }
        return false;
    }

    public int hashCode() {
        int m716m = StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.topicId) * 31;
        String str = this.name;
        int hashCode = (m716m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.icon;
        return ((((((((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.order) * 31) + this.presets.hashCode()) * 31) + this.dialogs.hashCode()) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.userId);
    }

    public String toString() {
        return "TopicDb(topicId=" + this.topicId + ", name=" + ((Object) this.name) + ", icon=" + ((Object) this.icon) + ", order=" + this.order + ", presets=" + this.presets + ", dialogs=" + this.dialogs + ", userId=" + this.userId + ')';
    }

    public TopicDb(long j, String str, String str2, int i, List<Long> presets, List<Long> dialogs, long j2) {
        Intrinsics.checkNotNullParameter(presets, "presets");
        Intrinsics.checkNotNullParameter(dialogs, "dialogs");
        this.topicId = j;
        this.name = str;
        this.icon = str2;
        this.order = i;
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
