package okhttp3.internal.cache;

import java.io.IOException;
import okio.Sink;
/* compiled from: CacheRequest.kt */
/* loaded from: classes4.dex */
public interface CacheRequest {
    void abort();

    Sink body() throws IOException;
}
