package com.iMe.utils.glide;

import android.content.Context;
import android.graphics.drawable.PictureDrawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;
import com.bumptech.glide.module.AppGlideModule;
import com.caverock.androidsvg.SVG;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SvgModule.kt */
/* loaded from: classes6.dex */
public final class SvgModule extends AppGlideModule {
    @Override // com.bumptech.glide.module.AppGlideModule
    public boolean isManifestParsingEnabled() {
        return false;
    }

    @Override // com.bumptech.glide.module.LibraryGlideModule
    public void registerComponents(Context context, Glide glide, Registry registry) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(glide, "glide");
        Intrinsics.checkNotNullParameter(registry, "registry");
        registry.register(SVG.class, PictureDrawable.class, new SvgDrawableTranscoder()).append(InputStream.class, SVG.class, new SvgDecoder());
    }
}
