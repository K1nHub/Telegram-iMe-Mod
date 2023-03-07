package com.smedialink.storage.data.manager;

import com.facebook.flipper.plugins.network.NetworkFlipperPlugin;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: FlipperManager.kt */
/* loaded from: classes3.dex */
final class FlipperManager$networkFlipperPlugin$2 extends Lambda implements Function0<NetworkFlipperPlugin> {
    public static final FlipperManager$networkFlipperPlugin$2 INSTANCE = new FlipperManager$networkFlipperPlugin$2();

    FlipperManager$networkFlipperPlugin$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final NetworkFlipperPlugin invoke() {
        return new NetworkFlipperPlugin();
    }
}
