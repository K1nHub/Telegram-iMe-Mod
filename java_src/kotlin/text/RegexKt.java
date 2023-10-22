package kotlin.text;

import java.util.regex.Matcher;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: Regex.kt */
/* loaded from: classes4.dex */
public final class RegexKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final MatchResult matchEntire(Matcher matcher, CharSequence charSequence) {
        if (matcher.matches()) {
            return new MatcherMatchResult(matcher, charSequence);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IntRange range(java.util.regex.MatchResult matchResult, int i) {
        IntRange until;
        until = RangesKt___RangesKt.until(matchResult.start(i), matchResult.end(i));
        return until;
    }
}
