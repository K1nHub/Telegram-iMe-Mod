package com.iMe.utils.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestListener;
/* loaded from: classes4.dex */
public class GlideRequest<TranscodeType> extends RequestBuilder<TranscodeType> {
    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    public /* bridge */ /* synthetic */ RequestBuilder apply(BaseRequestOptions baseRequestOptions) {
        return apply((BaseRequestOptions<?>) baseRequestOptions);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    public /* bridge */ /* synthetic */ BaseRequestOptions apply(BaseRequestOptions baseRequestOptions) {
        return apply((BaseRequestOptions<?>) baseRequestOptions);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public /* bridge */ /* synthetic */ BaseRequestOptions decode(Class cls) {
        return decode((Class<?>) cls);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public /* bridge */ /* synthetic */ BaseRequestOptions set(Option option, Object obj) {
        return set((Option<Option>) option, (Option) obj);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public /* bridge */ /* synthetic */ BaseRequestOptions transform(Transformation transformation) {
        return transform((Transformation<Bitmap>) transformation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GlideRequest(Glide glide, RequestManager requestManager, Class<TranscodeType> cls, Context context) {
        super(glide, requestManager, cls, context);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> sizeMultiplier(float f) {
        return (GlideRequest) super.sizeMultiplier(f);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> useAnimationPool(boolean z) {
        return (GlideRequest) super.useAnimationPool(z);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        return (GlideRequest) super.diskCacheStrategy(diskCacheStrategy);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> priority(Priority priority) {
        return (GlideRequest) super.priority(priority);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> placeholder(Drawable drawable) {
        return (GlideRequest) super.placeholder(drawable);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> error(Drawable drawable) {
        return (GlideRequest) super.error(drawable);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> skipMemoryCache(boolean z) {
        return (GlideRequest) super.skipMemoryCache(z);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> override(int i, int i2) {
        return (GlideRequest) super.override(i, i2);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> signature(Key key) {
        return (GlideRequest) super.signature(key);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public <Y> GlideRequest<TranscodeType> set(Option<Y> option, Y y) {
        return (GlideRequest) super.set((Option<Option<Y>>) option, (Option<Y>) y);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> decode(Class<?> cls) {
        return (GlideRequest) super.decode(cls);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> downsample(DownsampleStrategy downsampleStrategy) {
        return (GlideRequest) super.downsample(downsampleStrategy);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> optionalCenterCrop() {
        return (GlideRequest) super.optionalCenterCrop();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> centerCrop() {
        return (GlideRequest) super.centerCrop();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> optionalFitCenter() {
        return (GlideRequest) super.optionalFitCenter();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> fitCenter() {
        return (GlideRequest) super.fitCenter();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> optionalCenterInside() {
        return (GlideRequest) super.optionalCenterInside();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> circleCrop() {
        return (GlideRequest) super.circleCrop();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> transform(Transformation<Bitmap> transformation) {
        return (GlideRequest) super.transform(transformation);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public <Y> GlideRequest<TranscodeType> optionalTransform(Class<Y> cls, Transformation<Y> transformation) {
        return (GlideRequest) super.optionalTransform((Class) cls, (Transformation) transformation);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> dontAnimate() {
        return (GlideRequest) super.dontAnimate();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> lock() {
        return (GlideRequest) super.lock();
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    public GlideRequest<TranscodeType> apply(BaseRequestOptions<?> baseRequestOptions) {
        return (GlideRequest) super.apply(baseRequestOptions);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public GlideRequest<TranscodeType> listener(RequestListener<TranscodeType> requestListener) {
        return (GlideRequest) super.listener((RequestListener) requestListener);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public GlideRequest<TranscodeType> addListener(RequestListener<TranscodeType> requestListener) {
        return (GlideRequest) super.addListener((RequestListener) requestListener);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public GlideRequest<TranscodeType> load(Object obj) {
        return (GlideRequest) super.load(obj);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public GlideRequest<TranscodeType> load(String str) {
        return (GlideRequest) super.load(str);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    /* renamed from: clone */
    public GlideRequest<TranscodeType> mo1203clone() {
        return (GlideRequest) super.mo1203clone();
    }
}
