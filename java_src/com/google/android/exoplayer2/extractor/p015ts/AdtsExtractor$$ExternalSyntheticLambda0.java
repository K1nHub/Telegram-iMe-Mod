package com.google.android.exoplayer2.extractor.p015ts;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.extractor.ts.AdtsExtractor$$ExternalSyntheticLambda0 */
/* loaded from: classes.dex */
public final /* synthetic */ class AdtsExtractor$$ExternalSyntheticLambda0 implements ExtractorsFactory {
    public static final /* synthetic */ AdtsExtractor$$ExternalSyntheticLambda0 INSTANCE = new AdtsExtractor$$ExternalSyntheticLambda0();

    private /* synthetic */ AdtsExtractor$$ExternalSyntheticLambda0() {
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        Extractor[] lambda$static$0;
        lambda$static$0 = AdtsExtractor.lambda$static$0();
        return lambda$static$0;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public /* synthetic */ Extractor[] createExtractors(Uri uri, Map map) {
        Extractor[] createExtractors;
        createExtractors = createExtractors();
        return createExtractors;
    }
}
