package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.integration.webp.decoder.WebpDrawable;
import com.bumptech.glide.integration.webp.decoder.WebpDrawableTransformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.iMe.storage.data.network.model.response.kikliko.GifResponse;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: KiklikoGifView.kt */
/* renamed from: com.iMe.fork.ui.view.KiklikoGifView */
/* loaded from: classes4.dex */
public final class KiklikoGifView extends FrameLayout {
    private File file;
    private GifResponse gif;
    private final Lazy gifView$delegate;
    private final Lazy mutedIconView$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KiklikoGifView(Context context) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.fork.ui.view.KiklikoGifView$gifView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initGifView;
                initGifView = KiklikoGifView.this.initGifView();
                return initGifView;
            }
        });
        this.gifView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.fork.ui.view.KiklikoGifView$mutedIconView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initMutedIconView;
                initMutedIconView = KiklikoGifView.this.initMutedIconView();
                return initMutedIconView;
            }
        });
        this.mutedIconView$delegate = lazy2;
        setBackgroundColor(Theme.getColor(Theme.key_chat_emojiSearchBackground));
        addView(getGifView(), LayoutHelper.createFrame(-1, -1));
        addView(getMutedIconView(), LayoutHelper.createFrame(14, 14, 51, 3, 1, 0, 0));
    }

    private final ImageView getGifView() {
        return (ImageView) this.gifView$delegate.getValue();
    }

    private final ImageView getMutedIconView() {
        return (ImageView) this.mutedIconView$delegate.getValue();
    }

    public final GifResponse getGif() {
        GifResponse gifResponse = this.gif;
        if (gifResponse == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gif");
            return null;
        }
        return gifResponse;
    }

    public final File getFile() {
        File file = this.file;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException("file");
            return null;
        }
        return file;
    }

    public final void setGif(GifResponse gif) {
        Intrinsics.checkNotNullParameter(gif, "gif");
        this.gif = gif;
        File directory = FileLoader.getDirectory(4);
        this.file = new File(directory, Utilities.MD5(gif.getFile().getMp4()) + ".mp4");
        Glide.with(getContext()).load(gif.getFile().getWebp()).diskCacheStrategy(DiskCacheStrategy.ALL).optionalTransform(WebpDrawable.class, new WebpDrawableTransformation(new CenterCrop())).into(getGifView());
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initGifView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initMutedIconView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setImageDrawable(Theme.chat_msgNoSoundDrawable);
        return imageView;
    }
}
