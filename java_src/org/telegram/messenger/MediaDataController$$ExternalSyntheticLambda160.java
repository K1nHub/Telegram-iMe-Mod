package org.telegram.messenger;

import java.util.Comparator;
import org.telegram.tgnet.TLRPC$TL_topPeer;
/* loaded from: classes4.dex */
public final /* synthetic */ class MediaDataController$$ExternalSyntheticLambda160 implements Comparator {
    public static final /* synthetic */ MediaDataController$$ExternalSyntheticLambda160 INSTANCE = new MediaDataController$$ExternalSyntheticLambda160();

    private /* synthetic */ MediaDataController$$ExternalSyntheticLambda160() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$increasePeerRaiting$144;
        lambda$increasePeerRaiting$144 = MediaDataController.lambda$increasePeerRaiting$144((TLRPC$TL_topPeer) obj, (TLRPC$TL_topPeer) obj2);
        return lambda$increasePeerRaiting$144;
    }
}
