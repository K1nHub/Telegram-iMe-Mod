package com.smedialink.bots.data.model.network;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BotRemoteInfo.kt */
/* loaded from: classes3.dex */
public final class BotRemoteInfo {
    @SerializedName("description")
    private final String description;
    @SerializedName("installation")
    private final String installs;
    @SerializedName(AppMeasurementSdk.ConditionalUserProperty.NAME)
    private final String name;
    @SerializedName("phrase")
    private final String phrases;
    @SerializedName("rating")
    private final String rating;
    @SerializedName("theme")
    private final String themes;
    @SerializedName("title")
    private final String title;
    @SerializedName("deletion")
    private final String uninstalls;
    @SerializedName("votings")
    private final String votings;
    @SerializedName("weight")
    private final String weight;

    public final String component1() {
        return this.name;
    }

    public final String component10() {
        return this.votings;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.description;
    }

    public final String component4() {
        return this.installs;
    }

    public final String component5() {
        return this.uninstalls;
    }

    public final String component6() {
        return this.themes;
    }

    public final String component7() {
        return this.phrases;
    }

    public final String component8() {
        return this.weight;
    }

    public final String component9() {
        return this.rating;
    }

    public final BotRemoteInfo copy(String name, String title, String description, String installs, String uninstalls, String themes, String phrases, String weight, String rating, String votings) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(installs, "installs");
        Intrinsics.checkNotNullParameter(uninstalls, "uninstalls");
        Intrinsics.checkNotNullParameter(themes, "themes");
        Intrinsics.checkNotNullParameter(phrases, "phrases");
        Intrinsics.checkNotNullParameter(weight, "weight");
        Intrinsics.checkNotNullParameter(rating, "rating");
        Intrinsics.checkNotNullParameter(votings, "votings");
        return new BotRemoteInfo(name, title, description, installs, uninstalls, themes, phrases, weight, rating, votings);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BotRemoteInfo) {
            BotRemoteInfo botRemoteInfo = (BotRemoteInfo) obj;
            return Intrinsics.areEqual(this.name, botRemoteInfo.name) && Intrinsics.areEqual(this.title, botRemoteInfo.title) && Intrinsics.areEqual(this.description, botRemoteInfo.description) && Intrinsics.areEqual(this.installs, botRemoteInfo.installs) && Intrinsics.areEqual(this.uninstalls, botRemoteInfo.uninstalls) && Intrinsics.areEqual(this.themes, botRemoteInfo.themes) && Intrinsics.areEqual(this.phrases, botRemoteInfo.phrases) && Intrinsics.areEqual(this.weight, botRemoteInfo.weight) && Intrinsics.areEqual(this.rating, botRemoteInfo.rating) && Intrinsics.areEqual(this.votings, botRemoteInfo.votings);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((this.name.hashCode() * 31) + this.title.hashCode()) * 31) + this.description.hashCode()) * 31) + this.installs.hashCode()) * 31) + this.uninstalls.hashCode()) * 31) + this.themes.hashCode()) * 31) + this.phrases.hashCode()) * 31) + this.weight.hashCode()) * 31) + this.rating.hashCode()) * 31) + this.votings.hashCode();
    }

    public String toString() {
        return "BotRemoteInfo(name=" + this.name + ", title=" + this.title + ", description=" + this.description + ", installs=" + this.installs + ", uninstalls=" + this.uninstalls + ", themes=" + this.themes + ", phrases=" + this.phrases + ", weight=" + this.weight + ", rating=" + this.rating + ", votings=" + this.votings + ')';
    }

    public BotRemoteInfo(String name, String title, String description, String installs, String uninstalls, String themes, String phrases, String weight, String rating, String votings) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(installs, "installs");
        Intrinsics.checkNotNullParameter(uninstalls, "uninstalls");
        Intrinsics.checkNotNullParameter(themes, "themes");
        Intrinsics.checkNotNullParameter(phrases, "phrases");
        Intrinsics.checkNotNullParameter(weight, "weight");
        Intrinsics.checkNotNullParameter(rating, "rating");
        Intrinsics.checkNotNullParameter(votings, "votings");
        this.name = name;
        this.title = title;
        this.description = description;
        this.installs = installs;
        this.uninstalls = uninstalls;
        this.themes = themes;
        this.phrases = phrases;
        this.weight = weight;
        this.rating = rating;
        this.votings = votings;
    }

    public final String getName() {
        return this.name;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getInstalls() {
        return this.installs;
    }

    public final String getUninstalls() {
        return this.uninstalls;
    }

    public final String getThemes() {
        return this.themes;
    }

    public final String getPhrases() {
        return this.phrases;
    }

    public final String getWeight() {
        return this.weight;
    }

    public final String getRating() {
        return this.rating;
    }

    public final String getVotings() {
        return this.votings;
    }
}
