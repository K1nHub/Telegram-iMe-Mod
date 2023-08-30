package com.iMe.bots.data.model.response;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HolidaysResponse.kt */
/* loaded from: classes3.dex */
public final class HolidaysResponse {
    private final List<String> response;
    private final String tag;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HolidaysResponse copy$default(HolidaysResponse holidaysResponse, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = holidaysResponse.response;
        }
        if ((i & 2) != 0) {
            str = holidaysResponse.tag;
        }
        return holidaysResponse.copy(list, str);
    }

    public final List<String> component1() {
        return this.response;
    }

    public final String component2() {
        return this.tag;
    }

    public final HolidaysResponse copy(List<String> response, String tag) {
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(tag, "tag");
        return new HolidaysResponse(response, tag);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HolidaysResponse) {
            HolidaysResponse holidaysResponse = (HolidaysResponse) obj;
            return Intrinsics.areEqual(this.response, holidaysResponse.response) && Intrinsics.areEqual(this.tag, holidaysResponse.tag);
        }
        return false;
    }

    public int hashCode() {
        return (this.response.hashCode() * 31) + this.tag.hashCode();
    }

    public String toString() {
        return "HolidaysResponse(response=" + this.response + ", tag=" + this.tag + ')';
    }

    public HolidaysResponse(List<String> response, String tag) {
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.response = response;
        this.tag = tag;
    }

    public final List<String> getResponse() {
        return this.response;
    }

    public final String getTag() {
        return this.tag;
    }
}
