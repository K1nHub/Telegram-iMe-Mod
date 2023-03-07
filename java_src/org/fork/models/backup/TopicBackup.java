package org.fork.models.backup;

import com.smedialink.storage.data.repository.topics.Topic;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TopicBackup.kt */
/* loaded from: classes4.dex */
public final class TopicBackup {
    private final Set<Long> databaseDialogs;
    private Topic icon;
    private final String name;
    private int order;
    private Set<Long> presets;
    private final String topicId;

    public static /* synthetic */ TopicBackup copy$default(TopicBackup topicBackup, String str, Topic topic, int i, Set set, Set set2, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = topicBackup.name;
        }
        if ((i2 & 2) != 0) {
            topic = topicBackup.icon;
        }
        Topic topic2 = topic;
        if ((i2 & 4) != 0) {
            i = topicBackup.order;
        }
        int i3 = i;
        Set<Long> set3 = set;
        if ((i2 & 8) != 0) {
            set3 = topicBackup.presets;
        }
        Set set4 = set3;
        Set<Long> set5 = set2;
        if ((i2 & 16) != 0) {
            set5 = topicBackup.databaseDialogs;
        }
        Set set6 = set5;
        if ((i2 & 32) != 0) {
            str2 = topicBackup.topicId;
        }
        return topicBackup.copy(str, topic2, i3, set4, set6, str2);
    }

    public final String component1() {
        return this.name;
    }

    public final Topic component2() {
        return this.icon;
    }

    public final int component3() {
        return this.order;
    }

    public final Set<Long> component4() {
        return this.presets;
    }

    public final Set<Long> component5() {
        return this.databaseDialogs;
    }

    public final String component6() {
        return this.topicId;
    }

    public final TopicBackup copy(String str, Topic topic, int i, Set<Long> presets, Set<Long> databaseDialogs, String str2) {
        Intrinsics.checkNotNullParameter(presets, "presets");
        Intrinsics.checkNotNullParameter(databaseDialogs, "databaseDialogs");
        return new TopicBackup(str, topic, i, presets, databaseDialogs, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TopicBackup) {
            TopicBackup topicBackup = (TopicBackup) obj;
            return Intrinsics.areEqual(this.name, topicBackup.name) && this.icon == topicBackup.icon && this.order == topicBackup.order && Intrinsics.areEqual(this.presets, topicBackup.presets) && Intrinsics.areEqual(this.databaseDialogs, topicBackup.databaseDialogs) && Intrinsics.areEqual(this.topicId, topicBackup.topicId);
        }
        return false;
    }

    public int hashCode() {
        String str = this.name;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Topic topic = this.icon;
        int hashCode2 = (((((((hashCode + (topic == null ? 0 : topic.hashCode())) * 31) + this.order) * 31) + this.presets.hashCode()) * 31) + this.databaseDialogs.hashCode()) * 31;
        String str2 = this.topicId;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "TopicBackup(name=" + ((Object) this.name) + ", icon=" + this.icon + ", order=" + this.order + ", presets=" + this.presets + ", databaseDialogs=" + this.databaseDialogs + ", topicId=" + ((Object) this.topicId) + ')';
    }

    public TopicBackup(String str, Topic topic, int i, Set<Long> presets, Set<Long> databaseDialogs, String str2) {
        Intrinsics.checkNotNullParameter(presets, "presets");
        Intrinsics.checkNotNullParameter(databaseDialogs, "databaseDialogs");
        this.name = str;
        this.icon = topic;
        this.order = i;
        this.presets = presets;
        this.databaseDialogs = databaseDialogs;
        this.topicId = str2;
    }

    public /* synthetic */ TopicBackup(String str, Topic topic, int i, Set set, Set set2, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, topic, i, set, set2, (i2 & 32) != 0 ? null : str2);
    }

    public final String getName() {
        return this.name;
    }

    public final Topic getIcon() {
        return this.icon;
    }

    public final void setIcon(Topic topic) {
        this.icon = topic;
    }

    public final int getOrder() {
        return this.order;
    }

    public final void setOrder(int i) {
        this.order = i;
    }

    public final Set<Long> getPresets() {
        return this.presets;
    }

    public final void setPresets(Set<Long> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.presets = set;
    }

    public final Set<Long> getDatabaseDialogs() {
        return this.databaseDialogs;
    }

    public final String getTopicId() {
        return this.topicId;
    }
}
