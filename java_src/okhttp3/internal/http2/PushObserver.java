package okhttp3.internal.http2;

import java.io.IOException;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSource;
/* compiled from: PushObserver.kt */
/* loaded from: classes4.dex */
public interface PushObserver {
    public static final PushObserver CANCEL;

    boolean onData(int i, BufferedSource bufferedSource, int i2, boolean z) throws IOException;

    boolean onHeaders(int i, List<Header> list, boolean z);

    boolean onRequest(int i, List<Header> list);

    void onReset(int i, ErrorCode errorCode);

    /* compiled from: PushObserver.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: PushObserver.kt */
        /* loaded from: classes4.dex */
        private static final class PushObserverCancel implements PushObserver {
            @Override // okhttp3.internal.http2.PushObserver
            public boolean onHeaders(int i, List<Header> responseHeaders, boolean z) {
                Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onRequest(int i, List<Header> requestHeaders) {
                Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public void onReset(int i, ErrorCode errorCode) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onData(int i, BufferedSource source, int i2, boolean z) throws IOException {
                Intrinsics.checkNotNullParameter(source, "source");
                source.skip(i2);
                return true;
            }
        }
    }

    static {
        new Companion(null);
        CANCEL = new Companion.PushObserverCancel();
    }
}
