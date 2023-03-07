package com.smedialink.bots.data.model;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Response.kt */
/* loaded from: classes3.dex */
public final class Response {
    private final List<String> answers;
    private final String botId;
    private final String gif;
    private final String link;
    private final String tag;

    public static /* synthetic */ Response copy$default(Response response, String str, String str2, String str3, String str4, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = response.botId;
        }
        if ((i & 2) != 0) {
            str2 = response.tag;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            str3 = response.gif;
        }
        String str6 = str3;
        if ((i & 8) != 0) {
            str4 = response.link;
        }
        String str7 = str4;
        List<String> list2 = list;
        if ((i & 16) != 0) {
            list2 = response.answers;
        }
        return response.copy(str, str5, str6, str7, list2);
    }

    public final String component1() {
        return this.botId;
    }

    public final String component2() {
        return this.tag;
    }

    public final String component3() {
        return this.gif;
    }

    public final String component4() {
        return this.link;
    }

    public final List<String> component5() {
        return this.answers;
    }

    public final Response copy(String botId, String tag, String gif, String link, List<String> answers) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(gif, "gif");
        Intrinsics.checkNotNullParameter(link, "link");
        Intrinsics.checkNotNullParameter(answers, "answers");
        return new Response(botId, tag, gif, link, answers);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Response) {
            Response response = (Response) obj;
            return Intrinsics.areEqual(this.botId, response.botId) && Intrinsics.areEqual(this.tag, response.tag) && Intrinsics.areEqual(this.gif, response.gif) && Intrinsics.areEqual(this.link, response.link) && Intrinsics.areEqual(this.answers, response.answers);
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.botId.hashCode() * 31) + this.tag.hashCode()) * 31) + this.gif.hashCode()) * 31) + this.link.hashCode()) * 31) + this.answers.hashCode();
    }

    public String toString() {
        return "Response(botId=" + this.botId + ", tag=" + this.tag + ", gif=" + this.gif + ", link=" + this.link + ", answers=" + this.answers + ')';
    }

    public Response(String botId, String tag, String gif, String link, List<String> answers) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(gif, "gif");
        Intrinsics.checkNotNullParameter(link, "link");
        Intrinsics.checkNotNullParameter(answers, "answers");
        this.botId = botId;
        this.tag = tag;
        this.gif = gif;
        this.link = link;
        this.answers = answers;
    }

    public /* synthetic */ Response(String str, String str2, String str3, String str4, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, list);
    }

    public final String getBotId() {
        return this.botId;
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
