package com.otaliastudios.gif;

import android.os.Handler;
import com.otaliastudios.gif.GIFOptions;
import com.otaliastudios.gif.internal.Logger;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public class GIFCompressor {
    private static final Logger LOG = new Logger(GIFCompressor.class.getSimpleName());
    private static final String TAG = "GIFCompressor";
    private static volatile GIFCompressor sGIFCompressor;
    private ThreadPoolExecutor mExecutor;

    /* loaded from: classes4.dex */
    private class Factory implements ThreadFactory {
        private AtomicInteger count;

        private Factory(GIFCompressor gIFCompressor) {
            this.count = new AtomicInteger(1);
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, GIFCompressor.TAG + " Thread #" + this.count.getAndIncrement());
        }
    }

    private GIFCompressor() {
        int availableProcessors = Runtime.getRuntime().availableProcessors() + 1;
        this.mExecutor = new ThreadPoolExecutor(availableProcessors, availableProcessors, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new Factory());
    }

    public static GIFCompressor getInstance() {
        if (sGIFCompressor == null) {
            synchronized (GIFCompressor.class) {
                if (sGIFCompressor == null) {
                    sGIFCompressor = new GIFCompressor();
                }
            }
        }
        return sGIFCompressor;
    }

    public static GIFOptions.Builder into(String str) {
        return new GIFOptions.Builder(str);
    }

    public Future<Void> compress(final GIFOptions gIFOptions) {
        final ListenerWrapper listenerWrapper = new ListenerWrapper(gIFOptions.listenerHandler, gIFOptions.listener);
        return this.mExecutor.submit(new Callable<Void>(this) { // from class: com.otaliastudios.gif.GIFCompressor.1
            /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
                com.otaliastudios.gif.GIFCompressor.LOG.m1002i("Compression canceled.", r2);
                r2.onGIFCompressionCanceled();
             */
            /* JADX WARN: Code restructure failed: missing block: B:16:0x0045, code lost:
                return null;
             */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Void call() throws java.lang.Exception {
                /*
                    r4 = this;
                    com.otaliastudios.gif.engine.Engine r0 = new com.otaliastudios.gif.engine.Engine     // Catch: java.lang.Throwable -> L15
                    com.otaliastudios.gif.GIFCompressor$1$1 r1 = new com.otaliastudios.gif.GIFCompressor$1$1     // Catch: java.lang.Throwable -> L15
                    r1.<init>()     // Catch: java.lang.Throwable -> L15
                    r0.<init>(r1)     // Catch: java.lang.Throwable -> L15
                    com.otaliastudios.gif.GIFOptions r1 = r3     // Catch: java.lang.Throwable -> L15
                    r0.compress(r1)     // Catch: java.lang.Throwable -> L15
                    com.otaliastudios.gif.GIFListener r0 = r2     // Catch: java.lang.Throwable -> L15
                    r0.onGIFCompressionCompleted()     // Catch: java.lang.Throwable -> L15
                    goto L45
                L15:
                    r0 = move-exception
                    boolean r1 = r0 instanceof java.lang.InterruptedException
                    r2 = r0
                L19:
                    if (r1 != 0) goto L35
                    java.lang.Throwable r3 = r2.getCause()
                    if (r3 == 0) goto L35
                    java.lang.Throwable r3 = r2.getCause()
                    boolean r3 = r3.equals(r2)
                    if (r3 != 0) goto L35
                    java.lang.Throwable r2 = r2.getCause()
                    boolean r3 = r2 instanceof java.lang.InterruptedException
                    if (r3 == 0) goto L19
                    r1 = 1
                    goto L19
                L35:
                    if (r1 == 0) goto L47
                    com.otaliastudios.gif.internal.Logger r0 = com.otaliastudios.gif.GIFCompressor.access$300()
                    java.lang.String r1 = "Compression canceled."
                    r0.m1002i(r1, r2)
                    com.otaliastudios.gif.GIFListener r0 = r2
                    r0.onGIFCompressionCanceled()
                L45:
                    r0 = 0
                    return r0
                L47:
                    boolean r1 = r0 instanceof java.lang.RuntimeException
                    if (r1 == 0) goto L5a
                    com.otaliastudios.gif.internal.Logger r1 = com.otaliastudios.gif.GIFCompressor.access$300()
                    java.lang.String r2 = "Fatal error while compressing, this might be invalid format or bug in engine or Android."
                    r1.m1004e(r2, r0)
                    com.otaliastudios.gif.GIFListener r1 = r2
                    r1.onGIFCompressionFailed(r0)
                    throw r0
                L5a:
                    com.otaliastudios.gif.internal.Logger r1 = com.otaliastudios.gif.GIFCompressor.access$300()
                    java.lang.String r2 = "Unexpected error while compressing"
                    r1.m1004e(r2, r0)
                    com.otaliastudios.gif.GIFListener r1 = r2
                    r1.onGIFCompressionFailed(r0)
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.otaliastudios.gif.GIFCompressor.CallableC26351.call():java.lang.Void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class ListenerWrapper implements GIFListener {
        private Handler mHandler;
        private GIFListener mListener;

        private ListenerWrapper(Handler handler, GIFListener gIFListener) {
            this.mHandler = handler;
            this.mListener = gIFListener;
        }

        @Override // com.otaliastudios.gif.GIFListener
        public void onGIFCompressionCanceled() {
            this.mHandler.post(new Runnable() { // from class: com.otaliastudios.gif.GIFCompressor.ListenerWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.mListener.onGIFCompressionCanceled();
                }
            });
        }

        @Override // com.otaliastudios.gif.GIFListener
        public void onGIFCompressionCompleted() {
            this.mHandler.post(new Runnable() { // from class: com.otaliastudios.gif.GIFCompressor.ListenerWrapper.2
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.mListener.onGIFCompressionCompleted();
                }
            });
        }

        @Override // com.otaliastudios.gif.GIFListener
        public void onGIFCompressionFailed(final Throwable th) {
            this.mHandler.post(new Runnable() { // from class: com.otaliastudios.gif.GIFCompressor.ListenerWrapper.3
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.mListener.onGIFCompressionFailed(th);
                }
            });
        }

        @Override // com.otaliastudios.gif.GIFListener
        public void onGIFCompressionProgress(final double d) {
            this.mHandler.post(new Runnable() { // from class: com.otaliastudios.gif.GIFCompressor.ListenerWrapper.4
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.mListener.onGIFCompressionProgress(d);
                }
            });
        }
    }
}
