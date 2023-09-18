package okio;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Okio.kt */
/* loaded from: classes6.dex */
final /* synthetic */ class Okio__OkioKt {
    public static final BufferedSource buffer(Source buffer) {
        Intrinsics.checkNotNullParameter(buffer, "$this$buffer");
        return new RealBufferedSource(buffer);
    }

    public static final BufferedSink buffer(Sink buffer) {
        Intrinsics.checkNotNullParameter(buffer, "$this$buffer");
        return new RealBufferedSink(buffer);
    }

    public static final Sink blackhole() {
        return new BlackholeSink();
    }
}
