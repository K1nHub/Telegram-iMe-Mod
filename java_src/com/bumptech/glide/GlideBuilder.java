package com.bumptech.glide;

import android.content.Context;
import androidx.collection.ArrayMap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideExperiments;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPoolAdapter;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory;
import com.bumptech.glide.load.engine.cache.LruResourceCache;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class GlideBuilder {
    private GlideExecutor animationExecutor;
    private ArrayPool arrayPool;
    private BitmapPool bitmapPool;
    private ConnectivityMonitorFactory connectivityMonitorFactory;
    private List<RequestListener<Object>> defaultRequestListeners;
    private GlideExecutor diskCacheExecutor;
    private DiskCache.Factory diskCacheFactory;
    private Engine engine;
    private boolean isActiveResourceRetentionAllowed;
    private MemoryCache memoryCache;
    private MemorySizeCalculator memorySizeCalculator;
    private RequestManagerRetriever.RequestManagerFactory requestManagerFactory;
    private GlideExecutor sourceExecutor;
    private final Map<Class<?>, TransitionOptions<?, ?>> defaultTransitionOptions = new ArrayMap();
    private final GlideExperiments.Builder glideExperimentsBuilder = new GlideExperiments.Builder();
    private int logLevel = 4;
    private Glide.RequestOptionsFactory defaultRequestOptionsFactory = new Glide.RequestOptionsFactory(this) { // from class: com.bumptech.glide.GlideBuilder.1
        @Override // com.bumptech.glide.Glide.RequestOptionsFactory
        public RequestOptions build() {
            return new RequestOptions();
        }
    };

    /* loaded from: classes.dex */
    public static final class LogRequestOrigins {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRequestManagerFactory(RequestManagerRetriever.RequestManagerFactory requestManagerFactory) {
        this.requestManagerFactory = requestManagerFactory;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Glide build(Context context) {
        if (this.sourceExecutor == null) {
            this.sourceExecutor = GlideExecutor.newSourceExecutor();
        }
        if (this.diskCacheExecutor == null) {
            this.diskCacheExecutor = GlideExecutor.newDiskCacheExecutor();
        }
        if (this.animationExecutor == null) {
            this.animationExecutor = GlideExecutor.newAnimationExecutor();
        }
        if (this.memorySizeCalculator == null) {
            this.memorySizeCalculator = new MemorySizeCalculator.Builder(context).build();
        }
        if (this.connectivityMonitorFactory == null) {
            this.connectivityMonitorFactory = new DefaultConnectivityMonitorFactory();
        }
        if (this.bitmapPool == null) {
            int bitmapPoolSize = this.memorySizeCalculator.getBitmapPoolSize();
            if (bitmapPoolSize > 0) {
                this.bitmapPool = new LruBitmapPool(bitmapPoolSize);
            } else {
                this.bitmapPool = new BitmapPoolAdapter();
            }
        }
        if (this.arrayPool == null) {
            this.arrayPool = new LruArrayPool(this.memorySizeCalculator.getArrayPoolSizeInBytes());
        }
        if (this.memoryCache == null) {
            this.memoryCache = new LruResourceCache(this.memorySizeCalculator.getMemoryCacheSize());
        }
        if (this.diskCacheFactory == null) {
            this.diskCacheFactory = new InternalCacheDiskCacheFactory(context);
        }
        if (this.engine == null) {
            this.engine = new Engine(this.memoryCache, this.diskCacheFactory, this.diskCacheExecutor, this.sourceExecutor, GlideExecutor.newUnlimitedSourceExecutor(), this.animationExecutor, this.isActiveResourceRetentionAllowed);
        }
        List<RequestListener<Object>> list = this.defaultRequestListeners;
        if (list == null) {
            this.defaultRequestListeners = Collections.emptyList();
        } else {
            this.defaultRequestListeners = Collections.unmodifiableList(list);
        }
        GlideExperiments build = this.glideExperimentsBuilder.build();
        return new Glide(context, this.engine, this.memoryCache, this.bitmapPool, this.arrayPool, new RequestManagerRetriever(this.requestManagerFactory, build), this.connectivityMonitorFactory, this.logLevel, this.defaultRequestOptionsFactory, this.defaultTransitionOptions, this.defaultRequestListeners, build);
    }

    /* loaded from: classes.dex */
    public static final class WaitForFramesAfterTrimMemory {
        private WaitForFramesAfterTrimMemory() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class EnableImageDecoderForBitmaps {
        EnableImageDecoderForBitmaps() {
        }
    }
}
