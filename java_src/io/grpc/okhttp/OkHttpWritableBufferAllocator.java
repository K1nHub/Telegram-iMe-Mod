package io.grpc.okhttp;

import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import io.grpc.internal.WritableBuffer;
import io.grpc.internal.WritableBufferAllocator;
import okio.Buffer;
/* loaded from: classes4.dex */
class OkHttpWritableBufferAllocator implements WritableBufferAllocator {
    @Override // io.grpc.internal.WritableBufferAllocator
    public WritableBuffer allocate(int i) {
        return new OkHttpWritableBuffer(new Buffer(), Math.min((int) ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES, Math.max(4096, i)));
    }
}
