package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class WebpFrameLoader {
    public static final Option<WebpFrameCacheStrategy> FRAME_CACHE_STRATEGY = Option.memory("com.bumptech.glide.integration.webp.decoder.WebpFrameLoader.CacheStrategy", WebpFrameCacheStrategy.AUTO);
    private final BitmapPool bitmapPool;
    private final List<FrameCallback> callbacks;
    private DelayTarget current;
    private Bitmap firstFrame;
    private int firstFrameSize;
    private final Handler handler;
    private int height;
    private boolean isCleared;
    private boolean isLoadPending;
    private boolean isRunning;
    private DelayTarget next;
    private OnEveryFrameListener onEveryFrameListener;
    private DelayTarget pendingTarget;
    private RequestBuilder<Bitmap> requestBuilder;
    final RequestManager requestManager;
    private boolean startFromFirstFrame;
    private Transformation<Bitmap> transformation;
    private final WebpDecoder webpDecoder;
    private int width;

    /* loaded from: classes.dex */
    public interface FrameCallback {
        void onFrameReady();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface OnEveryFrameListener {
        void onFrameReady();
    }

    public WebpFrameLoader(Glide glide, WebpDecoder webpDecoder, int i, int i2, Transformation<Bitmap> transformation, Bitmap bitmap) {
        this(glide.getBitmapPool(), Glide.with(glide.getContext()), webpDecoder, null, getRequestBuilder(Glide.with(glide.getContext()), i, i2), transformation, bitmap);
    }

    WebpFrameLoader(BitmapPool bitmapPool, RequestManager requestManager, WebpDecoder webpDecoder, Handler handler, RequestBuilder<Bitmap> requestBuilder, Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.callbacks = new ArrayList();
        this.isRunning = false;
        this.isLoadPending = false;
        this.startFromFirstFrame = false;
        this.requestManager = requestManager;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new FrameLoaderCallback()) : handler;
        this.bitmapPool = bitmapPool;
        this.handler = handler;
        this.requestBuilder = requestBuilder;
        this.webpDecoder = webpDecoder;
        setFrameTransformation(transformation, bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFrameTransformation(Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.transformation = (Transformation) Preconditions.checkNotNull(transformation);
        this.firstFrame = (Bitmap) Preconditions.checkNotNull(bitmap);
        this.requestBuilder = this.requestBuilder.apply((BaseRequestOptions<?>) new RequestOptions().transform(transformation));
        this.firstFrameSize = Util.getBitmapByteSize(bitmap);
        this.width = bitmap.getWidth();
        this.height = bitmap.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap getFirstFrame() {
        return this.firstFrame;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void subscribe(FrameCallback frameCallback) {
        if (this.isCleared) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        if (this.callbacks.contains(frameCallback)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean isEmpty = this.callbacks.isEmpty();
        this.callbacks.add(frameCallback);
        if (isEmpty) {
            start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unsubscribe(FrameCallback frameCallback) {
        this.callbacks.remove(frameCallback);
        if (this.callbacks.isEmpty()) {
            stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getWidth() {
        return this.width;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getHeight() {
        return this.height;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSize() {
        return this.webpDecoder.getByteSize() + this.firstFrameSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCurrentIndex() {
        DelayTarget delayTarget = this.current;
        if (delayTarget != null) {
            return delayTarget.index;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer getBuffer() {
        return this.webpDecoder.getData().asReadOnlyBuffer();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFrameCount() {
        return this.webpDecoder.getFrameCount();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getLoopCount() {
        return this.webpDecoder.getTotalIterationCount();
    }

    private void start() {
        if (this.isRunning) {
            return;
        }
        this.isRunning = true;
        this.isCleared = false;
        loadNextFrame();
    }

    private void stop() {
        this.isRunning = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        this.callbacks.clear();
        recycleFirstFrame();
        stop();
        DelayTarget delayTarget = this.current;
        if (delayTarget != null) {
            this.requestManager.clear(delayTarget);
            this.current = null;
        }
        DelayTarget delayTarget2 = this.next;
        if (delayTarget2 != null) {
            this.requestManager.clear(delayTarget2);
            this.next = null;
        }
        DelayTarget delayTarget3 = this.pendingTarget;
        if (delayTarget3 != null) {
            this.requestManager.clear(delayTarget3);
            this.pendingTarget = null;
        }
        this.webpDecoder.clear();
        this.isCleared = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap getCurrentFrame() {
        DelayTarget delayTarget = this.current;
        return delayTarget != null ? delayTarget.getResource() : this.firstFrame;
    }

    private void loadNextFrame() {
        if (!this.isRunning || this.isLoadPending) {
            return;
        }
        if (this.startFromFirstFrame) {
            Preconditions.checkArgument(this.pendingTarget == null, "Pending target must be null when starting from the first frame");
            this.webpDecoder.resetFrameIndex();
            this.startFromFirstFrame = false;
        }
        DelayTarget delayTarget = this.pendingTarget;
        if (delayTarget != null) {
            this.pendingTarget = null;
            onFrameReady(delayTarget);
            return;
        }
        this.isLoadPending = true;
        int nextDelay = this.webpDecoder.getNextDelay();
        this.webpDecoder.advance();
        int currentFrameIndex = this.webpDecoder.getCurrentFrameIndex();
        this.next = new DelayTarget(this.handler, currentFrameIndex, SystemClock.uptimeMillis() + nextDelay);
        this.requestBuilder.apply((BaseRequestOptions<?>) RequestOptions.signatureOf(getFrameSignature(currentFrameIndex)).skipMemoryCache(this.webpDecoder.getCacheStrategy().noCache())).load(this.webpDecoder).into((RequestBuilder<Bitmap>) this.next);
    }

    private void recycleFirstFrame() {
        Bitmap bitmap = this.firstFrame;
        if (bitmap != null) {
            this.bitmapPool.put(bitmap);
            this.firstFrame = null;
        }
    }

    void onFrameReady(DelayTarget delayTarget) {
        OnEveryFrameListener onEveryFrameListener = this.onEveryFrameListener;
        if (onEveryFrameListener != null) {
            onEveryFrameListener.onFrameReady();
        }
        this.isLoadPending = false;
        if (this.isCleared) {
            this.handler.obtainMessage(2, delayTarget).sendToTarget();
        } else if (!this.isRunning) {
            if (this.startFromFirstFrame) {
                this.handler.obtainMessage(2, delayTarget).sendToTarget();
            } else {
                this.pendingTarget = delayTarget;
            }
        } else {
            if (delayTarget.getResource() != null) {
                recycleFirstFrame();
                DelayTarget delayTarget2 = this.current;
                this.current = delayTarget;
                for (int size = this.callbacks.size() - 1; size >= 0; size--) {
                    try {
                        FrameCallback frameCallback = this.callbacks.get(size);
                        if (frameCallback != null) {
                            frameCallback.onFrameReady();
                        }
                    } catch (IndexOutOfBoundsException e) {
                        e.printStackTrace();
                    }
                }
                if (delayTarget2 != null) {
                    this.handler.obtainMessage(2, delayTarget2).sendToTarget();
                }
            }
            loadNextFrame();
        }
    }

    /* loaded from: classes.dex */
    private class FrameLoaderCallback implements Handler.Callback {
        FrameLoaderCallback() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                WebpFrameLoader.this.onFrameReady((DelayTarget) message.obj);
                return true;
            } else if (i == 2) {
                WebpFrameLoader.this.requestManager.clear((DelayTarget) message.obj);
                return false;
            } else {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class DelayTarget extends CustomTarget<Bitmap> {
        private final Handler handler;
        final int index;
        private Bitmap resource;
        private final long targetTime;

        @Override // com.bumptech.glide.request.target.Target
        public /* bridge */ /* synthetic */ void onResourceReady(Object obj, Transition transition) {
            onResourceReady((Bitmap) obj, (Transition<? super Bitmap>) transition);
        }

        DelayTarget(Handler handler, int i, long j) {
            this.handler = handler;
            this.index = i;
            this.targetTime = j;
        }

        Bitmap getResource() {
            return this.resource;
        }

        public void onResourceReady(Bitmap bitmap, Transition<? super Bitmap> transition) {
            this.resource = bitmap;
            this.handler.sendMessageAtTime(this.handler.obtainMessage(1, this), this.targetTime);
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(Drawable drawable) {
            this.resource = null;
        }
    }

    private static RequestBuilder<Bitmap> getRequestBuilder(RequestManager requestManager, int i, int i2) {
        return requestManager.asBitmap().apply((BaseRequestOptions<?>) RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.NONE).useAnimationPool(true).skipMemoryCache(true).override(i, i2));
    }

    private Key getFrameSignature(int i) {
        return new WebpFrameCacheKey(new ObjectKey(this.webpDecoder), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class WebpFrameCacheKey implements Key {
        private final int frameIndex;
        private final Key sourceKey;

        WebpFrameCacheKey(Key key, int i) {
            this.sourceKey = key;
            this.frameIndex = i;
        }

        @Override // com.bumptech.glide.load.Key
        public boolean equals(Object obj) {
            if (obj instanceof WebpFrameCacheKey) {
                WebpFrameCacheKey webpFrameCacheKey = (WebpFrameCacheKey) obj;
                return this.sourceKey.equals(webpFrameCacheKey.sourceKey) && this.frameIndex == webpFrameCacheKey.frameIndex;
            }
            return false;
        }

        @Override // com.bumptech.glide.load.Key
        public int hashCode() {
            return (this.sourceKey.hashCode() * 31) + this.frameIndex;
        }

        @Override // com.bumptech.glide.load.Key
        public void updateDiskCacheKey(MessageDigest messageDigest) {
            messageDigest.update(ByteBuffer.allocate(12).putInt(this.frameIndex).array());
            this.sourceKey.updateDiskCacheKey(messageDigest);
        }
    }
}
