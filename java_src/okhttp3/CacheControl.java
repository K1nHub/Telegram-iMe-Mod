package okhttp3;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: CacheControl.kt */
/* loaded from: classes4.dex */
public final class CacheControl {
    public static final Companion Companion = new Companion(null);
    private String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;

    private CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.noCache = z;
        this.noStore = z2;
        this.maxAgeSeconds = i;
        this.sMaxAgeSeconds = i2;
        this.isPrivate = z3;
        this.isPublic = z4;
        this.mustRevalidate = z5;
        this.maxStaleSeconds = i3;
        this.minFreshSeconds = i4;
        this.onlyIfCached = z6;
        this.noTransform = z7;
        this.immutable = z8;
        this.headerValue = str;
    }

    public /* synthetic */ CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, i, i2, z3, z4, z5, i3, i4, z6, z7, z8, str);
    }

    public final boolean noCache() {
        return this.noCache;
    }

    public final boolean noStore() {
        return this.noStore;
    }

    public final int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public final boolean isPrivate() {
        return this.isPrivate;
    }

    public final boolean isPublic() {
        return this.isPublic;
    }

    public final boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public final int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public final int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public final boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public String toString() {
        String str = this.headerValue;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            if (this.noCache) {
                sb.append("no-cache, ");
            }
            if (this.noStore) {
                sb.append("no-store, ");
            }
            if (this.maxAgeSeconds != -1) {
                sb.append("max-age=");
                sb.append(this.maxAgeSeconds);
                sb.append(", ");
            }
            if (this.sMaxAgeSeconds != -1) {
                sb.append("s-maxage=");
                sb.append(this.sMaxAgeSeconds);
                sb.append(", ");
            }
            if (this.isPrivate) {
                sb.append("private, ");
            }
            if (this.isPublic) {
                sb.append("public, ");
            }
            if (this.mustRevalidate) {
                sb.append("must-revalidate, ");
            }
            if (this.maxStaleSeconds != -1) {
                sb.append("max-stale=");
                sb.append(this.maxStaleSeconds);
                sb.append(", ");
            }
            if (this.minFreshSeconds != -1) {
                sb.append("min-fresh=");
                sb.append(this.minFreshSeconds);
                sb.append(", ");
            }
            if (this.onlyIfCached) {
                sb.append("only-if-cached, ");
            }
            if (this.noTransform) {
                sb.append("no-transform, ");
            }
            if (this.immutable) {
                sb.append("immutable, ");
            }
            if (sb.length() == 0) {
                return "";
            }
            sb.delete(sb.length() - 2, sb.length());
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
            this.headerValue = sb2;
            return sb2;
        }
        return str;
    }

    /* compiled from: CacheControl.kt */
    /* loaded from: classes4.dex */
    public static final class Builder {
        private boolean immutable;
        private int maxAgeSeconds = -1;
        private int maxStaleSeconds = -1;
        private int minFreshSeconds = -1;
        private boolean noCache;
        private boolean noStore;
        private boolean noTransform;
        private boolean onlyIfCached;

        private final int clampToInt(long j) {
            if (j > Integer.MAX_VALUE) {
                return Integer.MAX_VALUE;
            }
            return (int) j;
        }

        public final Builder noCache() {
            this.noCache = true;
            return this;
        }

        public final Builder maxStale(int i, TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            if (!(i >= 0)) {
                throw new IllegalArgumentException(("maxStale < 0: " + i).toString());
            }
            this.maxStaleSeconds = clampToInt(timeUnit.toSeconds(i));
            return this;
        }

        public final Builder onlyIfCached() {
            this.onlyIfCached = true;
            return this;
        }

        public final CacheControl build() {
            return new CacheControl(this.noCache, this.noStore, this.maxAgeSeconds, -1, false, false, false, this.maxStaleSeconds, this.minFreshSeconds, this.onlyIfCached, this.noTransform, this.immutable, null, null);
        }
    }

    /* compiled from: CacheControl.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00d9  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00dd  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.CacheControl parse(okhttp3.Headers r32) {
            /*
                Method dump skipped, instructions count: 395
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.CacheControl.Companion.parse(okhttp3.Headers):okhttp3.CacheControl");
        }

        private final int indexOfElement(String str, String str2, int i) {
            boolean contains$default;
            int length = str.length();
            while (i < length) {
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) str2, str.charAt(i), false, 2, (Object) null);
                if (contains$default) {
                    return i;
                }
                i++;
            }
            return str.length();
        }
    }

    static {
        new Builder().noCache().build();
        new Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, TimeUnit.SECONDS).build();
    }
}
