package com.bumptech.glide.integration.webp.decoder;
/* loaded from: classes.dex */
public final class WebpFrameCacheStrategy {
    private int mCacheSize;
    private CacheControl mCacheStrategy;
    public static final WebpFrameCacheStrategy NONE = new Builder().noCache().build();
    public static final WebpFrameCacheStrategy AUTO = new Builder().cacheAuto().build();

    /* loaded from: classes.dex */
    public enum CacheControl {
        CACHE_NONE,
        CACHE_LIMITED,
        CACHE_AUTO,
        CACHE_ALL
    }

    static {
        new Builder().cacheAll().build();
    }

    private WebpFrameCacheStrategy(Builder builder) {
        this.mCacheStrategy = builder.cacheControl;
        this.mCacheSize = builder.cacheSize;
    }

    public boolean noCache() {
        return this.mCacheStrategy == CacheControl.CACHE_NONE;
    }

    public boolean cacheAll() {
        return this.mCacheStrategy == CacheControl.CACHE_ALL;
    }

    public int getCacheSize() {
        return this.mCacheSize;
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private CacheControl cacheControl;
        private int cacheSize;

        public Builder noCache() {
            this.cacheControl = CacheControl.CACHE_NONE;
            return this;
        }

        public Builder cacheAll() {
            this.cacheControl = CacheControl.CACHE_ALL;
            return this;
        }

        public Builder cacheAuto() {
            this.cacheControl = CacheControl.CACHE_AUTO;
            return this;
        }

        public WebpFrameCacheStrategy build() {
            return new WebpFrameCacheStrategy(this);
        }
    }
}
