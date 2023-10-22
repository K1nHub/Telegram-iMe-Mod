package com.iMe.utils.glide;

import android.graphics.drawable.PictureDrawable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.SimpleResource;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.caverock.androidsvg.SVG;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SvgDrawableTranscoder.kt */
/* loaded from: classes4.dex */
public final class SvgDrawableTranscoder implements ResourceTranscoder<SVG, PictureDrawable> {
    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    public Resource<PictureDrawable> transcode(Resource<SVG> toTranscode, Options options) {
        Intrinsics.checkNotNullParameter(toTranscode, "toTranscode");
        Intrinsics.checkNotNullParameter(options, "options");
        return new SimpleResource(new PictureDrawable(toTranscode.get().renderToPicture()));
    }
}
