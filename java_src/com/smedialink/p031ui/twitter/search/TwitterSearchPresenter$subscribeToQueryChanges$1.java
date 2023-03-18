package com.smedialink.p031ui.twitter.search;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: TwitterSearchPresenter.kt */
/* renamed from: com.smedialink.ui.twitter.search.TwitterSearchPresenter$subscribeToQueryChanges$1 */
/* loaded from: classes3.dex */
final class TwitterSearchPresenter$subscribeToQueryChanges$1 extends Lambda implements Function1<String, String> {
    public static final TwitterSearchPresenter$subscribeToQueryChanges$1 INSTANCE = new TwitterSearchPresenter$subscribeToQueryChanges$1();

    TwitterSearchPresenter$subscribeToQueryChanges$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final String invoke(String rawQuery) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(rawQuery, "rawQuery");
        trim = StringsKt__StringsKt.trim(rawQuery);
        String obj = trim.toString();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < obj.length(); i++) {
            char charAt = obj.charAt(i);
            if (!Intrinsics.areEqual(String.valueOf(charAt), "@")) {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "filterNotTo(StringBuilder(), predicate).toString()");
        return sb2;
    }
}
