package com.smedialink.bots.domain.model;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SmartBotResponse.kt */
/* loaded from: classes3.dex */
public final class SmartBotResponse {
    private final List<String> answers;
    private final String gif;

    /* renamed from: id */
    private final String f254id;
    private final String link;
    private final int localAvatar;
    private final String name;
    private final String remoteAvatar;
    private final String tag;

    public final String component1() {
        return this.f254id;
    }

    public final String component2() {
        return this.name;
    }

    public final int component3() {
        return this.localAvatar;
    }

    public final String component4() {
        return this.remoteAvatar;
    }

    public final String component5() {
        return this.tag;
    }

    public final String component6() {
        return this.gif;
    }

    public final String component7() {
        return this.link;
    }

    public final List<String> component8() {
        return this.answers;
    }

    public final SmartBotResponse copy(String id, String name, int i, String remoteAvatar, String tag, String gif, String link, List<String> answers) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(remoteAvatar, "remoteAvatar");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(gif, "gif");
        Intrinsics.checkNotNullParameter(link, "link");
        Intrinsics.checkNotNullParameter(answers, "answers");
        return new SmartBotResponse(id, name, i, remoteAvatar, tag, gif, link, answers);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SmartBotResponse) {
            SmartBotResponse smartBotResponse = (SmartBotResponse) obj;
            return Intrinsics.areEqual(this.f254id, smartBotResponse.f254id) && Intrinsics.areEqual(this.name, smartBotResponse.name) && this.localAvatar == smartBotResponse.localAvatar && Intrinsics.areEqual(this.remoteAvatar, smartBotResponse.remoteAvatar) && Intrinsics.areEqual(this.tag, smartBotResponse.tag) && Intrinsics.areEqual(this.gif, smartBotResponse.gif) && Intrinsics.areEqual(this.link, smartBotResponse.link) && Intrinsics.areEqual(this.answers, smartBotResponse.answers);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((this.f254id.hashCode() * 31) + this.name.hashCode()) * 31) + this.localAvatar) * 31) + this.remoteAvatar.hashCode()) * 31) + this.tag.hashCode()) * 31) + this.gif.hashCode()) * 31) + this.link.hashCode()) * 31) + this.answers.hashCode();
    }

    public String toString() {
        return "SmartBotResponse(id=" + this.f254id + ", name=" + this.name + ", localAvatar=" + this.localAvatar + ", remoteAvatar=" + this.remoteAvatar + ", tag=" + this.tag + ", gif=" + this.gif + ", link=" + this.link + ", answers=" + this.answers + ')';
    }

    public SmartBotResponse(String id, String name, int i, String remoteAvatar, String tag, String gif, String link, List<String> answers) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(remoteAvatar, "remoteAvatar");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(gif, "gif");
        Intrinsics.checkNotNullParameter(link, "link");
        Intrinsics.checkNotNullParameter(answers, "answers");
        this.f254id = id;
        this.name = name;
        this.localAvatar = i;
        this.remoteAvatar = remoteAvatar;
        this.tag = tag;
        this.gif = gif;
        this.link = link;
        this.answers = answers;
    }

    public final String getId() {
        return this.f254id;
    }

    public final String getName() {
        return this.name;
    }

    public final int getLocalAvatar() {
        return this.localAvatar;
    }

    public final String getRemoteAvatar() {
        return this.remoteAvatar;
    }

    public final String getTag() {
        return this.tag;
    }

    public final String getGif() {
        return this.gif;
    }

    public final String getLink() {
        return this.link;
    }

    public final List<String> getAnswers() {
        return this.answers;
    }
}
