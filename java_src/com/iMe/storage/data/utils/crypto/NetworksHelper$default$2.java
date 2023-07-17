package com.iMe.storage.data.utils.crypto;

import com.iMe.storage.domain.model.crypto.Network;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: NetworksHelper.kt */
/* loaded from: classes3.dex */
final class NetworksHelper$default$2 extends Lambda implements Function0<Network> {
    public static final NetworksHelper$default$2 INSTANCE = new NetworksHelper$default$2();

    NetworksHelper$default$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Network invoke() {
        Network createDefaultNetwork;
        createDefaultNetwork = NetworksHelper.INSTANCE.createDefaultNetwork();
        return createDefaultNetwork;
    }
}
