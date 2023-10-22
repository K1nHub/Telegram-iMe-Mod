package okhttp3;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CookieJar.kt */
/* loaded from: classes4.dex */
public interface CookieJar {
    public static final CookieJar NO_COOKIES;

    List<Cookie> loadForRequest(HttpUrl httpUrl);

    void saveFromResponse(HttpUrl httpUrl, List<Cookie> list);

    /* compiled from: CookieJar.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: CookieJar.kt */
        /* loaded from: classes4.dex */
        private static final class NoCookies implements CookieJar {
            @Override // okhttp3.CookieJar
            public void saveFromResponse(HttpUrl url, List<Cookie> cookies) {
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(cookies, "cookies");
            }

            @Override // okhttp3.CookieJar
            public List<Cookie> loadForRequest(HttpUrl url) {
                List<Cookie> emptyList;
                Intrinsics.checkNotNullParameter(url, "url");
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
        }
    }

    static {
        new Companion(null);
        NO_COOKIES = new Companion.NoCookies();
    }
}
