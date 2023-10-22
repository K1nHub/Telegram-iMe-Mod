package kotlin.text;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MatchResult.kt */
/* loaded from: classes4.dex */
public interface MatchResult {
    Destructured getDestructured();

    List<String> getGroupValues();

    /* compiled from: MatchResult.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static Destructured getDestructured(MatchResult matchResult) {
            return new Destructured(matchResult);
        }
    }

    /* compiled from: MatchResult.kt */
    /* loaded from: classes4.dex */
    public static final class Destructured {
        private final MatchResult match;

        public Destructured(MatchResult match) {
            Intrinsics.checkNotNullParameter(match, "match");
            this.match = match;
        }

        public final MatchResult getMatch() {
            return this.match;
        }
    }
}
