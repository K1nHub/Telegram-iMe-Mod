package com.iMe.storage.domain.model.topics;

import com.google.android.exoplayer2.RendererCapabilities;
import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.iMe.storage.data.repository.topics.Topic;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TopicModel.kt */
/* loaded from: classes3.dex */
public final class TopicModel {
    public static final Companion Companion = new Companion(null);
    private final Set<Long> dialogs;
    private final Set<Long> filterArchivedDialogs;
    private final Set<Long> filterDialogs;
    private Topic icon;
    private boolean isHidden;
    private String name;
    private int order;
    private final Set<Long> presets;
    private long topicId;

    public final long component1() {
        return this.topicId;
    }

    public final String component2() {
        return this.name;
    }

    public final Topic component3() {
        return this.icon;
    }

    public final int component4() {
        return this.order;
    }

    public final boolean component5() {
        return this.isHidden;
    }

    public final Set<Long> component6() {
        return this.presets;
    }

    public final Set<Long> component7() {
        return this.dialogs;
    }

    public final Set<Long> component8() {
        return this.filterDialogs;
    }

    public final Set<Long> component9() {
        return this.filterArchivedDialogs;
    }

    public final TopicModel copy(long j, String str, Topic topic, int i, boolean z, Set<Long> presets, Set<Long> dialogs, Set<Long> filterDialogs, Set<Long> filterArchivedDialogs) {
        Intrinsics.checkNotNullParameter(presets, "presets");
        Intrinsics.checkNotNullParameter(dialogs, "dialogs");
        Intrinsics.checkNotNullParameter(filterDialogs, "filterDialogs");
        Intrinsics.checkNotNullParameter(filterArchivedDialogs, "filterArchivedDialogs");
        return new TopicModel(j, str, topic, i, z, presets, dialogs, filterDialogs, filterArchivedDialogs);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TopicModel) {
            TopicModel topicModel = (TopicModel) obj;
            return this.topicId == topicModel.topicId && Intrinsics.areEqual(this.name, topicModel.name) && this.icon == topicModel.icon && this.order == topicModel.order && this.isHidden == topicModel.isHidden && Intrinsics.areEqual(this.presets, topicModel.presets) && Intrinsics.areEqual(this.dialogs, topicModel.dialogs) && Intrinsics.areEqual(this.filterDialogs, topicModel.filterDialogs) && Intrinsics.areEqual(this.filterArchivedDialogs, topicModel.filterArchivedDialogs);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m1020m = ProfileData$$ExternalSyntheticBackport0.m1020m(this.topicId) * 31;
        String str = this.name;
        int hashCode = (m1020m + (str == null ? 0 : str.hashCode())) * 31;
        Topic topic = this.icon;
        int hashCode2 = (((hashCode + (topic != null ? topic.hashCode() : 0)) * 31) + this.order) * 31;
        boolean z = this.isHidden;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((((((hashCode2 + i) * 31) + this.presets.hashCode()) * 31) + this.dialogs.hashCode()) * 31) + this.filterDialogs.hashCode()) * 31) + this.filterArchivedDialogs.hashCode();
    }

    public String toString() {
        return "TopicModel(topicId=" + this.topicId + ", name=" + this.name + ", icon=" + this.icon + ", order=" + this.order + ", isHidden=" + this.isHidden + ", presets=" + this.presets + ", dialogs=" + this.dialogs + ", filterDialogs=" + this.filterDialogs + ", filterArchivedDialogs=" + this.filterArchivedDialogs + ')';
    }

    public TopicModel(long j, String str, Topic topic, int i, boolean z, Set<Long> presets, Set<Long> dialogs, Set<Long> filterDialogs, Set<Long> filterArchivedDialogs) {
        Intrinsics.checkNotNullParameter(presets, "presets");
        Intrinsics.checkNotNullParameter(dialogs, "dialogs");
        Intrinsics.checkNotNullParameter(filterDialogs, "filterDialogs");
        Intrinsics.checkNotNullParameter(filterArchivedDialogs, "filterArchivedDialogs");
        this.topicId = j;
        this.name = str;
        this.icon = topic;
        this.order = i;
        this.isHidden = z;
        this.presets = presets;
        this.dialogs = dialogs;
        this.filterDialogs = filterDialogs;
        this.filterArchivedDialogs = filterArchivedDialogs;
    }

    public final long getTopicId() {
        return this.topicId;
    }

    public final void setTopicId(long j) {
        this.topicId = j;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
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

    public final boolean isHidden() {
        return this.isHidden;
    }

    public final void setHidden(boolean z) {
        this.isHidden = z;
    }

    public final Set<Long> getPresets() {
        return this.presets;
    }

    public final Set<Long> getDialogs() {
        return this.dialogs;
    }

    public /* synthetic */ TopicModel(long j, String str, Topic topic, int i, boolean z, Set set, Set set2, Set set3, Set set4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, str, topic, i, z, set, set2, (i2 & 128) != 0 ? new LinkedHashSet() : set3, (i2 & 256) != 0 ? new LinkedHashSet() : set4);
    }

    public final Set<Long> getFilterDialogs() {
        return this.filterDialogs;
    }

    public final Set<Long> getFilterArchivedDialogs() {
        return this.filterArchivedDialogs;
    }

    public final boolean isUserTopic() {
        return this.name != null;
    }

    public final boolean isAutoTopic() {
        return (isUserTopic() || this.icon == null) ? false : true;
    }

    /* compiled from: TopicModel.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TopicModel createMockupWithTitle(String title) {
            Intrinsics.checkNotNullParameter(title, "title");
            return new TopicModel(-1L, title, null, -1, false, new LinkedHashSet(), new LinkedHashSet(), null, null, RendererCapabilities.MODE_SUPPORT_MASK, null);
        }
    }
}
