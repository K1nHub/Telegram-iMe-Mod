package com.smedialink.p031ui.topics;
/* compiled from: TopicInfo.kt */
/* renamed from: com.smedialink.ui.topics.TopicInfo */
/* loaded from: classes3.dex */
public final class TopicInfo {
    private final int colorResId;
    private final int iconResId;
    private final int titleResId;

    public final int component1() {
        return this.colorResId;
    }

    public final int component2() {
        return this.titleResId;
    }

    public final int component3() {
        return this.iconResId;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TopicInfo) {
            TopicInfo topicInfo = (TopicInfo) obj;
            return this.colorResId == topicInfo.colorResId && this.titleResId == topicInfo.titleResId && this.iconResId == topicInfo.iconResId;
        }
        return false;
    }

    public int hashCode() {
        return (((this.colorResId * 31) + this.titleResId) * 31) + this.iconResId;
    }

    public String toString() {
        return "TopicInfo(colorResId=" + this.colorResId + ", titleResId=" + this.titleResId + ", iconResId=" + this.iconResId + ')';
    }

    public TopicInfo(int i, int i2, int i3) {
        this.colorResId = i;
        this.titleResId = i2;
        this.iconResId = i3;
    }

    public final int getColorResId() {
        return this.colorResId;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final int getIconResId() {
        return this.iconResId;
    }
}
