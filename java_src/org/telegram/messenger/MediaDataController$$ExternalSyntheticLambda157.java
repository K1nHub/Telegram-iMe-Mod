package org.telegram.messenger;

import java.util.Comparator;
import org.telegram.tgnet.TLRPC$MessageEntity;
/* loaded from: classes4.dex */
public final /* synthetic */ class MediaDataController$$ExternalSyntheticLambda157 implements Comparator {
    public static final /* synthetic */ MediaDataController$$ExternalSyntheticLambda157 INSTANCE = new MediaDataController$$ExternalSyntheticLambda157();

    private /* synthetic */ MediaDataController$$ExternalSyntheticLambda157() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$getTextStyleRuns$167;
        lambda$getTextStyleRuns$167 = MediaDataController.lambda$getTextStyleRuns$167((TLRPC$MessageEntity) obj, (TLRPC$MessageEntity) obj2);
        return lambda$getTextStyleRuns$167;
    }
}
