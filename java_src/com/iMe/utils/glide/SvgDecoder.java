package com.iMe.utils.glide;

import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.SimpleResource;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGParseException;
import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;
/* compiled from: SvgDecoder.kt */
/* loaded from: classes6.dex */
public final class SvgDecoder implements ResourceDecoder<InputStream, SVG> {
    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean handles(InputStream source, Options options) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(options, "options");
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public Resource<SVG> decode(InputStream source, int i, int i2, Options options) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(options, "options");
        try {
            SVG fromInputStream = SVG.getFromInputStream(source);
            if (i != Integer.MIN_VALUE) {
                fromInputStream.setDocumentWidth(i);
            }
            if (i2 != Integer.MIN_VALUE) {
                fromInputStream.setDocumentHeight(i2);
            }
            return new SimpleResource(fromInputStream);
        } catch (SVGParseException e) {
            Timber.m6e(e);
            throw new IOException("Cannot load SVG from stream", e);
        }
    }
}
