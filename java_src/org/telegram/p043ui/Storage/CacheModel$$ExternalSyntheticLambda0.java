package org.telegram.p043ui.Storage;

import java.util.Comparator;
import org.telegram.p043ui.Storage.CacheModel;
/* renamed from: org.telegram.ui.Storage.CacheModel$$ExternalSyntheticLambda0 */
/* loaded from: classes6.dex */
public final /* synthetic */ class CacheModel$$ExternalSyntheticLambda0 implements Comparator {
    public static final /* synthetic */ CacheModel$$ExternalSyntheticLambda0 INSTANCE = new CacheModel$$ExternalSyntheticLambda0();

    private /* synthetic */ CacheModel$$ExternalSyntheticLambda0() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$sort$0;
        lambda$sort$0 = CacheModel.lambda$sort$0((CacheModel.FileInfo) obj, (CacheModel.FileInfo) obj2);
        return lambda$sort$0;
    }
}
